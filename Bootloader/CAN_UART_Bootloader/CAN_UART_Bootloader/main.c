#include <utility_support.h>
#include <can_driver.h>
#include <config.h>
#include <debug_macros.h>
#include <data_type_support.h>
#include <message_id.h>

/*##################################################*/
#define STATUS_LED	GPIO(GPIO_PORTB , 4)
/*##################################################*/



//*********************************************************************
can_context_type		can;
flash_wr_info_type		flash_write_info;
static struct timer_task	time_counts_events;


uint32_t			page_size = 255;
int				timer_event_occured = 0;
int				can_rx_event_occured = 0;
uint32_t			temp_32bit_data =0;
uint8_t				led_state; // for led blinking		
union bit_to_arr{
	uint8_t byte_arr[4];
	uint32_t bit32_data;	
}bit_to_arr_conv;

uint8_t read_boot_data[2] = {0};

//------------------------------------------------------------------------------------
void write_array_data_to_flash(uint8_t * data , int page_size , uint32_t abs_adress);
int get_flash_page_size();
int check_flash_data_array(uint8_t * data , int * length , int* abs_adress);

void read_serial_data();
void send_serial_data();
void decode_can_data();

void jump_to_application();
/* Application call */

/* ISR calls */
volatile void isr_timer_0_call()
{
	timer_event_occured = 1;	
}

volatile void isr_can_0_rx_call()
{
	can_rx_event_occured++;
}


//------------------------------------------------------------------------------------

int main(void)
{
	atmel_start_init();
	
	/*------------------------ peripheral init ----------------*/
	//TIMER 0 -> Toggle ejector operation
	time_counts_events.cb     = isr_timer_0_call; // ISR function registration
	time_counts_events.mode   = TIMER_TASK_REPEAT;
	time_counts_events.time_label = 0;
	timer_add_task(&TIMER_0, &time_counts_events);
	
	gpio_set_pin_direction(STATUS_LED , GPIO_DIRECTION_OUT);
	
	gpio_set_pin_level(STATUS_LED , true); // by default on
	led_state = 1;
	/* Reset the variables */
	flash_write_info.curr_flash_write_addr	= APP_START_BASE_ADDRESS;
	flash_write_info.flash_wr_buffer_index	= 0; // reset after every page write
	flash_write_info.page_byte_seq		= 0;
	can.can_id				= -1;
	
	/* Start app state */
	app.state = INIT;
	/* check the previous uploading status and Start the timer for boot-loader timeout */

	
	flash_read(&FLASH_0, STATUS_CHECK_ADDRESS , read_boot_data, 1);
	if(read_boot_data[0] == 1){ // if previous boot was successful then start timeout else stay in boot.
		time_counts_events.interval = BOOT_LOADER_TIMEOUT;
		timer_start(&TIMER_0);
	}

	

	
	while (1) {
		switch(app.state){
			case INIT:
				
				can_init(&CAN_1 , CAN1 , (FUNC_PTR)isr_can_0_rx_call, 500);
				
				#if (BOOT_MODE == CAN_MODE)
					printf("[ OK ] Bootloader init!\n");
				#endif
				/* Next state */
				app.state = SERIAL_CAN_READ;
			break;
			
			case SERIAL_CAN_READ:
			
				#if (BOOT_MODE == CAN_MODE)
				if(can_rx_event_occured>0){
					can_read(&can);
					app.state = DECODE_CAN_DATA;	
					can_rx_event_occured--;
				}
				
				#else 
				
				if(can_read(&can)){
					/* If new data is available then decode*/
					app.state = DECODE_CAN_DATA;
				} else {
					/* else continue polling */
					app.state = SERIAL_CAN_READ;
				}
				#endif
			break;
			
			case DECODE_CAN_DATA:
				decode_can_data();
				/* Next state updated in can decode */
			break;
			
			
			
			
			case ERROR: // Error so not able to start app
				app.state = SERIAL_CAN_READ;
			break;			
			
			
			default:
				app.state = SERIAL_CAN_READ; // Always listen to programmer
			break;
		}
		
		/*
		* Check for timer events
		* It it happens that means no program upload so jump to application 
		*/
		if(timer_event_occured){
			timer_event_occured = 0;
			jump_to_application();
		}
	}
}
/*
################################################
* Function:             decode_can_data
* Operation:
* params:
* return:
################################################
*/
void decode_can_data()
{
	switch(can.can_id){
        /*
         * Boot start requested form HOST application
         * send the page size[1 byte] 
         * and base address[ 2 byte]
        */
        case CAN_START_FLASH_WRITE:
		timer_stop(&TIMER_0); // stop jump to application and start boot process
		can.can_id = CAN_START_FLASH_WRITE;
		can.can_data[0] = (uint8_t)get_flash_page_size();
		page_size = can.can_data[0]; // update the page size
		/*Send the base address of application */
		flash_write_info.temp_32bit_data = flash_write_info.curr_flash_write_addr;
		can.can_data[1] = (uint8_t)flash_write_info.temp_32bit_data;
		can.can_data[2] = (uint8_t)(flash_write_info.temp_32bit_data >> 8);
		can.len = 3;
		can_write(&can);
		
		
		/* Reset all the variables and buffers for start from beginning */
		flash_write_info.curr_flash_write_addr	= APP_START_BASE_ADDRESS;
		flash_write_info.flash_wr_buffer_index	= 0; // reset after every page write
		flash_write_info.page_byte_seq		= 0;
		memset(flash_write_info.flash_wr_buffer, 0 , 128);
		
		/* Starting the flash to make the boot flag as 0 set after successful upload */
		read_boot_data[0] = 0;
		flash_write(&FLASH_0, STATUS_CHECK_ADDRESS, read_boot_data, 1);

		#if (BOOT_MODE == CAN_MODE)
		printf("[ OK ] Firmware uploading...... !\n");
		#endif

		/* NExt state */
		app.state = SERIAL_CAN_READ;
        break;
	
	/*
         * Flash data from host application
         * Send ack of the data receive 
         * byte[0] = same seq number
	 * byte[1] = number of bytes
	 * byte[2:7] = data bytes
        */
	case CAN_SEND_FLASH_DATA:
		if(flash_write_info.page_byte_seq == can.can_data[0]){ // if the expected seq matched
			/* On every data packet make led blink*/
			gpio_set_pin_level(STATUS_LED , led_state);
			if(led_state)
				led_state =0;
			else
				led_state = 1;
			/* Assign the data bytes from the can to page write buffer */
			// can->data[1] is the number of bytes in a packet
			// j is for index the data bytes 
			for(int i = 0 , j = 2; (i < can.can_data[1]) ; i++, j++){
				flash_write_info.flash_wr_buffer[flash_write_info.flash_wr_buffer_index++] = can.can_data[j];
			}
			
			flash_write_info.page_byte_seq++; // Increment the sequence
			
			/* ACK this byte pack */
			can.can_id = CAN_SEND_FLASH_DATA;
			can.can_data[0] = can.can_data[0];
			can.len = 1;
			can_write(&can);
			
			/* next is to read next packet */
			app.state = SERIAL_CAN_READ;
		} else { // error seq mismatch
			can.can_id = CAN_SENT_FLASH_WRITE_ERROR;
			can.can_data[0] = 0;
			can.len = 1;
			can_write(&can);
			/* Error so*/
			app.state = SERIAL_CAN_READ;
		}
	break;
        
	/*
         * Flash write req from host application
         * Send ack of write status
         * byte[0] = write req bit
        */           
        case CAN_SEND_PAGE_COMPLETE:
		if(can.can_data[0]){ // write page and give ack
			
			/* Write to page */
			uint32_t temp_address = flash_write_info.curr_flash_write_addr;
			int byte_size = flash_write_info.flash_wr_buffer_index;
			write_array_data_to_flash(flash_write_info.flash_wr_buffer , byte_size , temp_address);
			
			int ret =  check_flash_data_array(flash_write_info.flash_wr_buffer , &flash_write_info.flash_wr_buffer_index , &flash_write_info.curr_flash_write_addr);
			
			
			/* Page write feedback to Host application */
			can.can_id = CAN_SEND_PAGE_COMPLETE;
			can.can_data[0] = ret;
			can.can_data[1] = flash_write_info.flash_wr_buffer_index; // number of byte written
			bit_to_arr_conv.bit32_data = flash_write_info.curr_flash_write_addr;
			can.can_data[2] = bit_to_arr_conv.byte_arr[0];
			can.can_data[3] = bit_to_arr_conv.byte_arr[1];
			can.can_data[4] = bit_to_arr_conv.byte_arr[2];
			can.can_data[5] = bit_to_arr_conv.byte_arr[3];
			can.len = 6;
			can_write(&can);
			
			
			/* Update the adress for next write */
			flash_write_info.curr_flash_write_addr += flash_write_info.flash_wr_buffer_index;
			
			/* reset the counters and buffers */
			memset(flash_write_info.flash_wr_buffer , 0 , 128);
			flash_write_info.flash_wr_buffer_index = 0;
			flash_write_info.page_byte_seq = 0;
			
			
			
			/* Next byte is to read the can data  */
			app.state = SERIAL_CAN_READ;
		} else {
			can.can_id = CAN_SENT_FLASH_WRITE_ERROR;
			can.can_data[0] = 0;
			can.len = 1;
			can_write(&can);
			/* Error so*/
			app.state = SERIAL_CAN_READ;
		}
        break;
	
	/*
         * Flash write req from host application
         * Send ack of write status
         * byte[0] = write req bit
        */  
	case CAN_SEND_EXT_SEG_ADDR:
		temp_32bit_data = 0;
		temp_32bit_data = ( ( (can.can_data[0]<<8) & 0xff00 ) | ( (can.can_data[1]) & 0xff) );
		/* Update data record adress */
		flash_write_info.curr_flash_write_addr = (temp_32bit_data*16);
		
		
		bit_to_arr_conv.bit32_data = flash_write_info.curr_flash_write_addr;
		can.can_data[0] = bit_to_arr_conv.byte_arr[0];
		can.can_data[1] = bit_to_arr_conv.byte_arr[1];
		can.can_data[2] = bit_to_arr_conv.byte_arr[2];
		can.can_data[3] = bit_to_arr_conv.byte_arr[3];
		
		can.can_id = CAN_SEND_EXT_SEG_ADDR;
		can.len = 4;
		can_write(&can);
		
		/* Next byte is to read the can data  */
		app.state = SERIAL_CAN_READ;
	break;
	
	/*
         * Application reset req
         * Send ack of write status
         * byte[0] = write req bit
        */
	case CAN_SEND_JUMP_TO_APP:
		if(can.can_data[0]){
			can.can_id = CAN_SEND_JUMP_TO_APP;
			can.can_data[0] = 1;
			can.len = 1;
			can_write(&can);
			delay_ms(500);
			/* Jump to application */
			jump_to_application();
				
		} else {
			can.can_id = CAN_SENT_FLASH_WRITE_ERROR;
			can.can_data[0] = 0;
			can.len = 1;
			can_write(&can);
			/* Error so*/
			app.state = SERIAL_CAN_READ;
		}
		
	break;    
                    
        default:
		app.state = SERIAL_CAN_READ; // default will be read can commands
        break;
    }   
}
void jump_to_application()
{	
	
	#if (BOOT_MODE == CAN_MODE)
	printf("[ OK ] Application starting .... !\n");
	#endif
	
	/* Deinit all the peripherals */
	flash_deinit(&FLASH_0);
	can_async_deinit(&CAN_1);
	timer_deinit(&TIMER_0);
	usart_sync_deinit(&TARGET_IO);
	
	/* Upload successfully so make the boot flag high */
	read_boot_data[0] = 1;
	flash_write(&FLASH_0, STATUS_CHECK_ADDRESS, read_boot_data, 1);

	// On application start it will become low
	gpio_set_pin_level(STATUS_LED , false);
	
	/* Jump to the application reset handler */
	void (* app_call)(void) = (void*)(*(volatile uint32_t *)(APP_START_BASE_ADDRESS+4));
	app_call();
}
/*
################################################
* Function:             write_array_data_to_flash
* Operation:
* params:
* return:
################################################
*/
void write_array_data_to_flash(uint8_t * data , int page_size , uint32_t abs_adress)
{
    //ASF 4 api for write data
    flash_write(&FLASH_0, abs_adress, data, page_size);
    
    #if BOOTLOADER_EVENT_PRINT_ENABLE
        printf("DRV: Flash Write [hex] -> %x\n\r",*abs_adress);
    #endif
}

/*
################################################
* Function:             get_flash_page_size
* Operation:
* params:
* return:
################################################
*/
int get_flash_page_size()
{
    #if BOOTLOADER_EVENT_PRINT_ENABLE
        printf("DRV: Flash Page size ask!\n\r");
    #endif
     //ASF 4 api for get the flash page size
    return flash_get_page_size(&FLASH_0);
    
    
}

/*
################################################
* Function:             check_flash_data_array
* Operation:
* params:
* return:
################################################
*/
int check_flash_data_array(uint8_t * data , int * length , int * abs_adress)
{
    
    
    uint8_t temp_data[MAX_FLASH_PAGE_SIZE_IN_BYTE];
    flash_read(&FLASH_0, *abs_adress, temp_data, *length);
    int i;
    for(i=0;i< *length;i++){
        if(temp_data[i] != data[i]){
            return 0;
        }
    }
    #if BOOTLOADER_EVENT_PRINT_ENABLE
        printf("DRV: Flash write check! success");
    #endif
    return 1;
    
}
