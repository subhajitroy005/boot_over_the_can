#include <atmel_start.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <ctype.h>
#include <utility_support.h>

#define CAN_MODE 1
#define USB_MODE 0

//*******************  Configuration of bootloader ********************
#define BOOT_MODE USB_MODE // Select the boot mode




//*********************************************************************
typedef struct app_state_machine{
    uint8_t state;
}app_state_machine_type; 
app_state_machine_type app; //state
enum states{
    ERROR = 0,
    INIT,
    SERIAL_CAN_READ,
    DECODE_CAN_DATA,
    FLASH_WRITE,
    JUMP_TO_APPLICATION,
    RESET_AT_BOOT_ERROR
};

typedef struct flash_wr_info{
	uint32_t curr_page_addr;
	uint32_t last_sent_ext_lin_addr;
	uint32_t wr_success_page_counter;
	uint32_t write_page_byte_counter;
    uint32_t page_byte_counter;
    uint32_t flash_write_seq;
	/* Temp data buffers*/
	 uint8_t temp_ext_lin_addr_buff[4]; // temp for string conv
	 uint32_t temp_ext_lin_addr; // temp for doing the bit shifting
     uint32_t temp_curr_page_addr; //temp for sending over can
     uint8_t temp_8bit_data;
     uint32_t temp_32bit_data;
}flash_wr_info_type;
flash_wr_info_type flash_write_info;

typedef union bits_conversion{
    uint8_t byte_arr[8];
    uint8_t byte_data;
    uint32_t bit32_data;
}bits_conversion_type;
bits_conversion_type bits_union;





// Message IDS declaration
#define CAN_ASK_PAGE_SIZE 1
#define CAN_SEND_FLASH_ADRESS 2
#define CAN_SEND_FLASH_DATA 3
#define CAN_SEND_EOF 4
#define CAN_SEND_EXT_SEG_ADDR 5
#define CAN_SEND_START_SEG_ADDR 6
#define CAN_SEND_EXT_LIN_ADDR 7
#define CAN_SEND_START_LIN_ADDR 8
#define CAN_SEND_JUMP_TO_APP 9
#define CAN_SEND_PAGE_COMPLETE 10
#define CAN_SEND_DATA_WRITE_READY 11
#define CAN_SEND_EOF_MCU_RESET 12
#define CAN_SENT_FLASH_WRITE_ERROR 13




#define MAX_FLASH_PAGE_SIZE_IN_BYTE     128
#define APP_START_ABS_ADRESS            57344 //start app from 0xE000      

#define BOOTLOADER_EVENT_PRINT_ENABLE   0


struct io_descriptor *serial_io;		// Instance for USART LabVIEW serial



/*Serial Related data */
uint8_t recv_char_buff[1]; // Temp store byte data from a whole UART data stream
uint8_t serial_buff_size = 0; // track the index of serial incomming string
unsigned char uart_frame_received = 0; // Flag is set after the frame is processed and 
uint8_t recv_serial_frame[25]; // The complete frame without t and \r
// Each serial line segmentation vars
uint8_t serial_recv_can_id_temp[3] = {};
uint16_t serial_can_tx_id;
uint8_t serial_recv_can_len[1];
uint8_t serial_can_tx_len;
uint8_t serial_can_data[8];
uint8_t can_tx_data[8]; // store temp hex data from can
typedef struct _can_data{
    uint32_t can_id;
    int len;
    uint8_t can_data[8];
}can_data_type;
can_data_type can;









uint8_t page_byte_byff[MAX_FLASH_PAGE_SIZE_IN_BYTE];
uint32_t page_size = 255;
int flash_write_check_flag = 0;
/* Jump to application */
void (*jump)(void) = (void (*)())(APP_START_ABS_ADRESS);



uint32_t i;
//------------------------------------------------------------------------------------
void write_array_data_to_flash(uint8_t * data , int * length , int* abs_adress);
int get_flash_page_size();
int check_flash_data_array(uint8_t * data , int * length , int* abs_adress);
void read_serial_data(can_data_type * can , app_state_machine_type * app);
void send_serial_data(can_data_type * can);








//------------------------------------------------------------------------------------

int main(void)
{
	atmel_start_init();
   
    /* Machine states data */
    
     // hold the can data
    /*All init section  ===========================*/
    usart_sync_get_io_descriptor(&TARGET_IO, &serial_io);	// Get the descriptor
    
    
    
    
     
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
    flash_write_info.page_byte_counter = 0;
    memset(page_byte_byff, 0, MAX_FLASH_PAGE_SIZE_IN_BYTE);
    flash_write_info.curr_page_addr = APP_START_ABS_ADRESS;
    
    app.state = INIT;
    //io_write(serial_io , (uint8_t *)"CAN/UART Bootloader!\n\r", 22);   
	while (1) {
        switch(app.state){
            case INIT:
                
                app.state = SERIAL_CAN_READ;
            break;
            
            
            case SERIAL_CAN_READ: // read the serial data
                //#if (BOOT_MODE == USB_MODE) // if it boot over usb read serial
                read_serial_data(&can , &app);
               // #else // Read can data
                //#endif
            break;
            
            case DECODE_CAN_DATA:
                switch(can.can_id){
                    case CAN_ASK_PAGE_SIZE:
                        can.can_id = CAN_ASK_PAGE_SIZE;
                        can.can_data[0] = (uint8_t)get_flash_page_size();
                        page_size = can.can_data[0]; // update the page size
                        can.len = 1;
                        send_serial_data(&can);
                        app.state = SERIAL_CAN_READ;
                    break;
                    
                    case CAN_SEND_EOF:
                    break;
                    
                    case CAN_SEND_EXT_SEG_ADDR:
                    break;
                    
                    case CAN_SEND_START_SEG_ADDR:
                    break;
                        
                    case CAN_SEND_EXT_LIN_ADDR: //  A liner adress
                        memset(bits_union.byte_arr, 0, 8);
                        bits_union.byte_arr[0] = can.can_data[0];
                        bits_union.byte_arr[1] = can.can_data[1];
                        flash_write_info.curr_page_addr |= ((bits_union.bit32_data << 16) & 0xFFFF0000);
                        can.can_id = CAN_SEND_EXT_LIN_ADDR;
                        can.len = 4;
                        flash_write_info.temp_32bit_data = flash_write_info.curr_page_addr; // copy the origin data
                        can.can_data[0] = (uint8_t)flash_write_info.temp_32bit_data ;
                        can.can_data[1] = (uint8_t)(flash_write_info.temp_32bit_data >>8);
                        can.can_data[2] = (uint8_t)(flash_write_info.temp_32bit_data >>16);
                        can.can_data[3] = (uint8_t)(flash_write_info.temp_32bit_data >>24);
                        send_serial_data(&can); // send the page starting address
                        memset(page_byte_byff, 0xff, MAX_FLASH_PAGE_SIZE_IN_BYTE);
                        flash_write_info.page_byte_counter = 0;
                        flash_write_info.flash_write_seq = 0;
                        app.state = SERIAL_CAN_READ;
                    break;
                    
                    case CAN_SEND_START_LIN_ADDR:
                    break;
                    
                    case CAN_SEND_DATA_WRITE_READY:
                            can.can_id = CAN_SEND_DATA_WRITE_READY;
                            can.len = 1;
                            can.can_data[0] = 1; // ready for accept
                            send_serial_data(&can);
                            app.state = SERIAL_CAN_READ;
                    break;
                    
                    case CAN_SEND_FLASH_DATA:
                        if( (can.can_data[0] - flash_write_info.flash_write_seq) == 1 ){  // next seq receive
                            flash_write_info.flash_write_seq = can.can_data[0];
                            for (i=1;i<5;i++){
                                page_byte_byff[flash_write_info.page_byte_counter++] = can.can_data[i];   
                            }
                            can.can_id = CAN_SEND_FLASH_DATA;
                            can.len = 1;
                            can.can_data[0] = 1; // positive feedback
                            send_serial_data(&can);
                            app.state = SERIAL_CAN_READ;
                        } else { // wrong seq so give negative ack
                            can.can_id = CAN_SEND_FLASH_DATA;
                            can.len = 1;
                            can.can_data[0] = 0;
                            send_serial_data(&can);
                            app.state = SERIAL_CAN_READ;
                        }
                    break;
                    
                    case CAN_SEND_PAGE_COMPLETE: // one page complete so write to flash and give ack
                        if( can.can_data[0] == 1){
                            write_array_data_to_flash(page_byte_byff , &page_size , &flash_write_info.curr_page_addr);
                            flash_write_check_flag = check_flash_data_array(page_byte_byff  , &page_size , &flash_write_info.curr_page_addr);
                            
                            can.can_data[0] = flash_write_check_flag;
                            
                            
                            flash_write_info.temp_32bit_data = flash_write_info.curr_page_addr; // this page has written
                            
                            
                            if(flash_write_check_flag){
                                flash_write_info.curr_page_addr = flash_write_info.curr_page_addr + (page_size );
                                can.can_id = CAN_SEND_PAGE_COMPLETE;
                                can.len = 5;
                            } else {
                                can.can_id = CAN_SENT_FLASH_WRITE_ERROR;
                                can.len = 5;
                            }
                            
                            can.can_data[1] = (uint8_t)flash_write_info.temp_32bit_data ;
                            can.can_data[2] = (uint8_t)(flash_write_info.temp_32bit_data >>8);
                            can.can_data[3] = (uint8_t)(flash_write_info.temp_32bit_data >>16);
                            can.can_data[4] = (uint8_t)(flash_write_info.temp_32bit_data >>24);
                            send_serial_data(&can);
                            /*Update the variables for next page data */
                            flash_write_info.flash_write_seq = 0;
                            
                            flash_write_info.page_byte_counter = 0;
                            memset(page_byte_byff, 0xff, MAX_FLASH_PAGE_SIZE_IN_BYTE);
                            
                            
                            
                            
                            
                            app.state = SERIAL_CAN_READ;
                        } else {
                            can.can_id = CAN_SEND_PAGE_COMPLETE;
                            can.len = 1;
                            can.can_data[0] = 0;
                            send_serial_data(&can);
                            app.state = SERIAL_CAN_READ;
                        }
                        
                    break;
                    
                    case CAN_SEND_EOF_MCU_RESET:
                            can.can_id = CAN_SEND_EOF_MCU_RESET;
                            can.len = 1;
                            can.can_data[0] = 1;
                            send_serial_data(&can);
                            app.state = SERIAL_CAN_READ;
                            delay_ms(100); // after a 100 ms delay jump to application 
                            jump();
                    break;
                    
                    default:
                        // Wrong ID so read again for next id
                        app.state = SERIAL_CAN_READ;
                    break;
                }
                
                
                
            break;
            
            case FLASH_WRITE:
                
            break;
            
            case JUMP_TO_APPLICATION:
            break;
            
            case RESET_AT_BOOT_ERROR: // At any boot error reset the system
            break;
            
        }
      
	}
}


//------------------------------------------------------------------------------------
void write_array_data_to_flash(uint8_t * data , int * page_size , int* abs_adress)
{
    //ASF 4 api for write data
    flash_write(&FLASH_0, *abs_adress, data, *page_size);
    
    #if BOOTLOADER_EVENT_PRINT_ENABLE
        printf("DRV: Flash Write [hex] -> %x\n\r",*abs_adress);
    #endif
}

int get_flash_page_size()
{
    #if BOOTLOADER_EVENT_PRINT_ENABLE
        printf("DRV: Flash Page size ask!\n\r");
    #endif
     //ASF 4 api for get the flash page size
    return flash_get_page_size(&FLASH_0);
    
    
}

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
//------------------------------------------------------------------------------------
void read_serial_data(can_data_type * can , app_state_machine_type * app)
{
    if(usart_sync_is_rx_not_empty(&TARGET_IO)){ //
			io_read(serial_io, recv_char_buff, 1);
			   
			if(recv_char_buff[0] == 't'){	// If the character is t reset all the values and start sampling the frame
				serial_buff_size = 0; // Start the string 				   
			} else if((recv_char_buff[0] == '\n') || (recv_char_buff[0] == '\r')) {	// If \r received then stop sampling character and start process the frame. 
				uart_frame_received = 1;
			} else {
				recv_serial_frame[serial_buff_size++] = recv_char_buff[0]; // Fill the buffer character by character
			}
		}
		
		/*  One complete usb frame is received and process the frame */
		if(uart_frame_received){
			// Copy the ID from the frame and convert to actual value
			for(i = 0 ; i < 3 ; i++){
				serial_recv_can_id_temp[i] = recv_serial_frame[i];
			}
            
            //io_write(lv_io , recv_can_id_temp, 3);
			serial_can_tx_id = hexadecimalToDecimal(serial_recv_can_id_temp);
            can->can_id = serial_can_tx_id;
            //printf("rec id: %x\n\r", can->can_id);
			
			// Copy the len from the data bytes and convert it to actual values
			serial_recv_can_len[0] = recv_serial_frame[3];
			serial_can_tx_len = hexadecimalToDecimal(serial_recv_can_len);
            can->len = serial_can_tx_len;
            //printf("rec len: %d\n\r", can->len);

			int index = 0;
			for(i = 4 ; (i < (4 + (serial_can_tx_len*2))) && (i<serial_buff_size) ; i+=2){ // One byte means 2 character in serial
				can_tx_data[0] = recv_serial_frame[i];
				can_tx_data[1] = recv_serial_frame[i+1];
				serial_can_data[index++] = hexadecimalToDecimal(can_tx_data);
			}
            for(int i= 0 ; i<8 ; i++ ){
                //printf("%d-",serial_can_data[i]);
                can->can_data[i] = serial_can_data[i];
            }
			memset(recv_serial_frame ,0 ,25);
            memset(serial_can_data ,0 ,8);
			uart_frame_received = 0;	// One frame has processed start receiving new frame
            app->state = DECODE_CAN_DATA;
		}	
}
void send_serial_data(can_data_type * can)
{
        // Serial String Format tiiildddd..dd\n | max data is the byte
        char temp_buff[3] = {0xf, 0xf ,0xf};
        char temp_copy_buffer[3] = {};
        char temp_buff_data[2] = {};
        char	uart_tx_frame_buff[23]= {};	
        /*First element of the string is 't' */
        uart_tx_frame_buff[0] = 't';
									
		/* CAN ID convert to string and concat to uart_tx_buffer */
			
		itoa (can->can_id,temp_buff,16);
        // zero padding in MSb 
        
        switch(strlen(temp_buff)){
            case 1: //if len is 1 the padding 0 to first 2 place
                temp_copy_buffer[0] = 0;
                temp_copy_buffer[1] = 0;
                temp_copy_buffer[2] = temp_buff[0];
                //printf("temp buffer len %d\n\r", strlen(temp_buff));
            break;
            
            case 2: //if len is 1 the padding 0 to first 2 place
                temp_copy_buffer[0] = 0;
                temp_copy_buffer[1] = temp_buff[0];
                temp_copy_buffer[2] = temp_buff[1];
                //printf("temp buffer len %d\n\r", strlen(temp_buff));
            break;
            
            case 3: //if len is 1 the padding 0 to first 2 place
                temp_copy_buffer[0] = temp_buff[0];
                temp_copy_buffer[1] = temp_buff[1];
                temp_copy_buffer[2] = temp_buff[2];
                //printf("temp buffer len %d\n\r", strlen(temp_buff));
            break;
            
            default: // never happen unless the ID is out of valid range
            break;
        }
        
        //printf("Temp buffer:-%s-\n\r",temp_copy_buffer);
		int i = 0;
		for(i=0; i < 3 ; i++){		
			if((temp_copy_buffer[i] >= 'a') && (temp_copy_buffer[i] <= 'f'))
				temp_copy_buffer[i] = toupper(temp_copy_buffer[i]);
			else if(temp_copy_buffer[i] == 0)
				temp_copy_buffer[i] = 48; // ascii of 0
			else{}
		}				
		strcat(uart_tx_frame_buff , temp_copy_buffer); /* concat with the uart_tx_frame_buffer*/
			
		/*data len converted to sting and transmit */
			
		uart_tx_frame_buff[4] = (uint8_t)(can->len+48); /* Length cann't be greater than 4 so put it as same posion is 4th byte*/
			
		/* 8 byte data conversion and concat to uart_tx_frame_buff */
        i= 0;
		for(i=0 ; i < can->len; i++){
				
			sprintf(temp_buff_data , "%x" , can->can_data[i]);
				
			/* swap \0 and single character convention */
			if(can->can_data[i]<16){
				uint8_t temp = temp_buff_data[0];
				temp_buff_data[0] = temp_buff_data[1];
				temp_buff_data[1] = temp;
			}
				
			/*1st digit conversion of byte */
			if((temp_buff_data[0] >= 'a') && (temp_buff_data[0] <= 'f'))
				temp_buff_data[0] = toupper(temp_buff_data[0]);
			else if(temp_buff_data[0] == 0)
				temp_buff_data[0] = 48;
			else{}
					
			/*2nd digit conversion of byte */
			if((temp_buff_data[1] >= 'a') && (temp_buff_data[1] <= 'f'))
				temp_buff_data[1] = toupper(temp_buff_data[1]);
			else if(temp_buff_data[1] == 0)
				temp_buff_data[1] = 48;
			else{}
			/* concatenate to the main sting according to LSB to MSB
			one by one after every byte convention in loop*/
			strcat(uart_tx_frame_buff , temp_buff_data);						 
		}
			
		//io_write(lv_io , temp_buff_data, 2);
		/* a \r should be padded after the bytes 5+ (i*2) */
		uart_tx_frame_buff[5+(i*2)] = '\r';											
		int serial_data_len = (6+(i*2));
		/* Send string to to Serial */
        uint8_t * uint8_data = (uint8_t *)uart_tx_frame_buff;
        io_write(serial_io , uint8_data, serial_data_len); // Calculate based on the data len
		//high
		memset(uart_tx_frame_buff , 0 , 23);
}