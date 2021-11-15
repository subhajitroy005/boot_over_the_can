#include <utility_support.h>
#include <can_driver.h>
#include <config.h>
#include <debug_macros.h>
#include <data_type_support.h>
#include <message_id.h>



//*********************************************************************
can_context_type		can;
flash_wr_info_type		flash_write_info;





/*##################################################
 * CAN related data

##################################################*/
#define CAN_DATA_LENGTH_IN_PACKET       8 

enum com_standard{
	CAN_TXN_ERROR = 0,
	CAN_TXN_QUERY,
	CAN_TXN_ACK
};



/*##################################################*/
#define MAX_FLASH_PAGE_SIZE_IN_BYTE     128
#define APP_START_BASE_ADDRESS          (0xE000) //start app from 0xE000      


#define BOOTLOADER_EVENT_PRINT_ENABLE           0
#define CAN_SERIAL_DATA_RECV_DECOMPOSE_PRINT    0











/*
 * Serial TXN related data
*/
struct _serial_read_info{
    uint8_t         recv_char_buff[1];          // Temp store byte data from a whole UART data stream
    int             serial_buff_size;       // track the index of serial incoming string
    uint8_t         uart_frame_received;    // Flag is set after the frame is processed and 
    uint8_t         recv_serial_frame[50];      // The complete frame without t and \r
    // For data conversion temp buffer
    uint8_t serial_recv_can_id_temp[3];
    uint8_t serial_recv_can_len_temp[1];
    uint8_t serial_recv_can_data_temp[2];       // for can data ascii string to byte conv
}serial_read_data;

struct _serial_write_info{
    // Serial String Format tiiildddd..dd\n | max data is the 23 byte
        uint8_t        temp_id_buff[3];
        uint8_t        temp_id_copy_buffer[3];
        uint8_t        temp_data_buff[2];
        uint8_t        uart_tx_frame_buff[50]; // max write will be 23
}serial_write_data;



/*Serial Related data */

// Each serial line segmentation vars





/*
 * FLASH Memory related info
 */









uint8_t page_byte_byff[MAX_FLASH_PAGE_SIZE_IN_BYTE];
uint32_t page_size = 255;




//------------------------------------------------------------------------------------
void write_array_data_to_flash(uint8_t * data , int * length , int* abs_adress);
int get_flash_page_size();
int check_flash_data_array(uint8_t * data , int * length , int* abs_adress);

void read_serial_data();
void send_serial_data();
void decode_can_data();





//------------------------------------------------------------------------------------

int main(void)
{
	atmel_start_init();
   
	/* Machine states data */
    
	// hold the can data
    /*All init section  ===========================*/
    
    
    
    
    
     
   /* // Flash write section example
    int page_size;
    uint8_t src_data[200];
    int adress = 0xa400; // starting adress for write 
    for (i = 0; i < page_size; i++) {
		src_data[i] = i;
	}
	page_size = get_flash_page_size();
	write_array_data_to_flash(src_data , &page_size , &adress);
    int flash_write_check_flag = check_flash_data_array(src_data , &page_size , &adress);
    printf("Flash Write status %d\n\r",flash_write_check_flag);
    
    */
    flash_write_info.curr_flash_write_addr = APP_START_BASE_ADDRESS;
    serial_read_data.uart_frame_received = 0;
    can.can_id = -1;
    
    
    
	/* Reset the variables */
	flash_write_info.flash_wr_buffer_index = 0; // reset after every page write
	flash_write_info.page_byte_seq = 0;
	
	app.state = INIT;    
	while (1) {
		switch(app.state){
			case INIT:
				can_init(&can);
				/* Next state */
				app.state = SERIAL_CAN_READ;
			break;
			
			case SERIAL_CAN_READ:
				if(can_read(&can)){
					/* If new data is available then decode*/
					app.state = DECODE_CAN_DATA;
				} else {
					/* else continue polling */
					app.state = SERIAL_CAN_READ;
					
				}
				
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
		can.can_id = CAN_START_FLASH_WRITE;
		can.can_data[0] = (uint8_t)get_flash_page_size();
		page_size = can.can_data[0]; // update the page size
		/*Send the base address of application */
		flash_write_info.temp_32bit_data = flash_write_info.curr_flash_write_addr;
		can.can_data[1] = (uint8_t)flash_write_info.temp_32bit_data;
		can.can_data[2] = (uint8_t)(flash_write_info.temp_32bit_data >> 8);
		can.len = 3;
		can_write(&can);
		
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
			app.state = ERROR;
		}
	break;
        
	/*
         * Flash write req from host application
         * Send ack of write status
         * byte[0] = write req bit
        */           
        case CAN_SEND_PAGE_COMPLETE:
		if(can.can_data[0]){ // write page and give ack
			/**/
			
			
			/* reset the counters and buffers */
			memset(flash_write_info.flash_wr_buffer , 0 , 128);
			flash_write_info.flash_wr_buffer_index = 0;
			flash_write_info.page_byte_seq = 0;
			
			/* Page write feedback to Host application */
			can.can_id = CAN_SEND_PAGE_COMPLETE;
			can.can_data[0] = 1;
			can.len = 1;
			can_write(&can);
			
			/* Next byte is to read the can data  */
			app.state = SERIAL_CAN_READ;
		} else {
			can.can_id = CAN_SENT_FLASH_WRITE_ERROR;
			can_write(&can);
			/* Error so*/
			app.state = ERROR;
		}
	
	
        break;    
                    
        default:
		app.state = SERIAL_CAN_READ; // default will be read can commands
        break;
    }   
}

/*
################################################
* Function:             write_array_data_to_flash
* Operation:
* params:
* return:
################################################
*/
void write_array_data_to_flash(uint8_t * data , int * page_size , int* abs_adress)
{
    //ASF 4 api for write data
    flash_write(&FLASH_0, *abs_adress, data, *page_size);
    
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
