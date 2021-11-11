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
int i;      // Global index purpose
typedef struct app_state_machine{
    uint8_t state;
    uint8_t can_data_available;
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
	uint32_t curr_flash_write_addr; // Current flash write address
    
    
    
    
    
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


typedef struct _can_data{
    uint32_t can_id;
    int len;
    uint8_t can_data[8];
}can_data_type;
can_data_type can;






/*##################################################
 * CAN related data

##################################################*/
#define CAN_DATA_LENGTH_IN_PACKET       8 

enum com_standard{
	CAN_TXN_ERROR = 0,
	CAN_TXN_QUERY,
	CAN_TXN_ACK
};

#define CAN_START_FLASH_WRITE           1   // Start the flash wite seq
#define CAN_SEND_FLASH_ADRESS           2
#define CAN_SEND_FLASH_DATA             3
#define CAN_SEND_EOF                    4
#define CAN_SEND_EXT_SEG_ADDR           5
#define CAN_SEND_START_SEG_ADDR         6
#define CAN_SEND_EXT_LIN_ADDR           7
#define CAN_SEND_START_LIN_ADDR         8
#define CAN_SEND_JUMP_TO_APP            9
#define CAN_SEND_PAGE_COMPLETE          10
#define CAN_SEND_DATA_WRITE_READY       11
#define CAN_SEND_EOF_MCU_RESET          12
#define CAN_SENT_FLASH_WRITE_ERROR      13

/*##################################################*/
#define MAX_FLASH_PAGE_SIZE_IN_BYTE     128
#define APP_START_BASE_ADDRESS          (0xE000) //start app from 0xE000      


#define BOOTLOADER_EVENT_PRINT_ENABLE           0
#define CAN_SERIAL_DATA_RECV_DECOMPOSE_PRINT    0








struct io_descriptor *serial_io;		// Instance for USART LabVIEW serial


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
    flash_write_info.curr_flash_write_addr = APP_START_BASE_ADDRESS;
    serial_read_data.uart_frame_received = 0;
    can.can_id = -1;
    app.can_data_available = 0; 
	while (1) {
        /*Read the serial data through can */
        //read_serial_data();
        /* If the data is available */
        //if(app.can_data_available){
          //  app.can_data_available = 0;
          //  decode_can_data();
       // }
	printf("t001212AB\r");
	delay_ms(1000);
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
            send_serial_data();
        break;
                    
                    
                     
        
                    
                    
        default:
        break;
    }   
}
/*
################################################
* Function:             read_serial_data
* Operation:
* params:
* return:
################################################
*/
void read_serial_data()
{
    if(usart_sync_is_rx_not_empty(&TARGET_IO)){ //
			io_read(serial_io, serial_read_data.recv_char_buff , 1);
			   
			if(serial_read_data.recv_char_buff[0] == 't'){	// If the character is t reset all the values and start sampling the frame
				serial_read_data.serial_buff_size = 0; // Start the string           
			} else if((serial_read_data.recv_char_buff[0] == '\n') || (serial_read_data.recv_char_buff[0] == '\r')) {	// If \r received then stop sampling character and start process the frame. 
				serial_read_data.uart_frame_received = 1;
			} else {
				serial_read_data.recv_serial_frame[serial_read_data.serial_buff_size++] = serial_read_data.recv_char_buff[0]; // Fill the buffer character by character
			}
	}
	
    /*  One complete usb frame is received and process the frame */
	if(serial_read_data.uart_frame_received){
        serial_read_data.uart_frame_received = 0;	// One frame has processed start receiving new frame
		// Copy the ID from the frame and convert to actual value
		for(int i = 0 ; i < 3 ; i++){
			serial_read_data.serial_recv_can_id_temp[i] = serial_read_data.recv_serial_frame[i];
		}   
        can.can_id = hexadecimalToDecimal(serial_read_data.serial_recv_can_id_temp);
        
		// Copy the len from the data bytes and convert it to actual values
        serial_read_data.serial_recv_can_len_temp[0] = serial_read_data.recv_serial_frame[3];
        can.len = hexadecimalToDecimal(serial_read_data.serial_recv_can_len_temp);
           
        int index = 0;
		for(int i = 4 ; (i < (4 + (can.len*2))) && (i < serial_read_data.serial_buff_size) ; i+=2){ // One byte means 2 character in serial
				serial_read_data.serial_recv_can_data_temp[0] = serial_read_data.recv_serial_frame[i];
                serial_read_data.serial_recv_can_data_temp[1] = serial_read_data.recv_serial_frame[i+1];
				can.can_data[index++] = hexadecimalToDecimal(serial_read_data.serial_recv_can_data_temp);
		}
      
        /*
            printf("SERIAL CAN data decompose------\n\r");
            printf("Whole String :%s:\n\r",serial_read_data.recv_serial_frame);
            printf("Recv CAN ID :%s: :%x\n\r",serial_read_data.serial_recv_can_id_temp, can.can_id);
            printf("Recv CAN Len :%s: :%d\n\r",serial_read_data.serial_recv_can_len_temp , can.len);
            for(int i = 0 ; i<8 ; i++){
                printf("-%x-",can.can_data[i]);
            }
            printf("\n\r---------------------------\n\r");
        */
                    
        memset(serial_read_data.recv_serial_frame , 0 ,25);
        memset(serial_read_data.serial_recv_can_id_temp , 0 ,3);
        memset(serial_read_data.serial_recv_can_data_temp , 0 ,2);
        serial_read_data.serial_recv_can_len_temp[0] = 0;
        
        app.can_data_available = 1; // after process the string can data is available
	}	
}
/*
################################################
* Function:             send_serial_data
* Operation:
* params:
* return:
################################################
*/
void send_serial_data()
{
    /* Clear the buffers */
    memset(serial_write_data.uart_tx_frame_buff , 0 ,25);
    memset(serial_write_data.temp_id_copy_buffer , 0 ,3);
    memset(serial_write_data.temp_id_buff , 0 ,3);
    memset(serial_write_data.temp_data_buff , 0 ,2);
    
    /*First element of the string is 't' */
    serial_write_data.uart_tx_frame_buff[0] = 't';
									
	/* CAN ID convert to string and concat to uart_tx_buffer */
	itoa(can.can_id,serial_write_data.temp_id_copy_buffer,16);
    // zero padding in MSb 
        
    switch(strlen(serial_write_data.temp_id_copy_buffer)){
        case 1: //if len is 1 the padding 0 to first 2 place
            serial_write_data.temp_id_buff[0] = 0;
            serial_write_data.temp_id_buff[1] = 0;
            serial_write_data.temp_id_buff[2] = serial_write_data.temp_id_copy_buffer[0];
        break;
            
        case 2: //if len is 1 the padding 0 to first 2 place
            serial_write_data.temp_id_buff[0] = 0;
            serial_write_data.temp_id_buff[1] = serial_write_data.temp_id_copy_buffer[0];
            serial_write_data.temp_id_buff[2] = serial_write_data.temp_id_copy_buffer[1];
        break;
            
        case 3: //if len is 1 the padding 0 to first 2 place
            serial_write_data.temp_id_buff[0] = serial_write_data.temp_id_copy_buffer[0];
            serial_write_data.temp_id_buff[1] = serial_write_data.temp_id_copy_buffer[1];
            serial_write_data.temp_id_buff[2] = serial_write_data.temp_id_copy_buffer[2];
        break;
            
        default: // never happen unless the ID is out of valid range
        break;
    }
        
    int i = 0;
    for(i=0; i < 3 ; i++){		
        if((serial_write_data.temp_id_buff[i] >= 'a') && (serial_write_data.temp_id_buff[i] <= 'f'))
			serial_write_data.temp_id_buff[i] = toupper(serial_write_data.temp_id_buff[i]);
		else if(serial_write_data.temp_id_buff[i] == 0)
			serial_write_data.temp_id_buff[i] = 48; // ascii of 0
		else{}
	}				
	strcat(serial_write_data.uart_tx_frame_buff , serial_write_data.temp_id_buff); /* concat with the uart_tx_frame_buffer*/
		
	/*data len converted to sting and transmit */
			
	serial_write_data.uart_tx_frame_buff[4] = (uint8_t)(can.len+48); /* Length cann't be greater than 4 so put it as same posion is 4th byte*/
			
	/* 8 byte data conversion and concat to uart_tx_frame_buff */
    int main_string_index = 5;
    for(i=0 ; i < can.len; i++){        
		itoa(can.can_data[i],serial_write_data.temp_data_buff,16);
        
		/* swap \0 and single character convention */
		if(can.can_data[i]<16){
			uint8_t temp = serial_write_data.temp_data_buff[0];
			serial_write_data.temp_data_buff[0] = serial_write_data.temp_data_buff[1];
			serial_write_data.temp_data_buff[1] = temp;
		}
				
		/*1st digit conversion of byte */
		if((serial_write_data.temp_data_buff[0] >= 'a') && (serial_write_data.temp_data_buff[0] <= 'f'))
			serial_write_data.temp_data_buff[0] = toupper(serial_write_data.temp_data_buff[0]);
		else if(serial_write_data.temp_data_buff[0] == 0)
			serial_write_data.temp_data_buff[0] = 48;
        else{}
		
        serial_write_data.uart_tx_frame_buff[main_string_index++] = serial_write_data.temp_data_buff[0];
        
        
		/*2nd digit conversion of byte */
		if((serial_write_data.temp_data_buff[1] >= 'a') && (serial_write_data.temp_data_buff[1] <= 'f'))
			serial_write_data.temp_data_buff[1] = toupper(serial_write_data.temp_data_buff[1]);
		else if(serial_write_data.temp_data_buff[1] == 0)
			serial_write_data.temp_data_buff[1] = 48;
		else{}
        serial_write_data.uart_tx_frame_buff[main_string_index++] = serial_write_data.temp_data_buff[1];
        
		/* concatenate to the main sting according to LSB to MSB
		one by one after every byte convention in loop
        finding problem here */
		//strcat(serial_write_data.uart_tx_frame_buff , serial_write_data.temp_data_buff);
	}
	/* a \r should be padded after the bytes 5+ (i*2) */
	serial_write_data.uart_tx_frame_buff[5+(i*2)] = '\r';											
	int serial_data_len = (6+(i*2));
	/* Send string to to Serial */
    io_write(serial_io , serial_write_data.uart_tx_frame_buff, serial_data_len); // Calculate based on the data len
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
