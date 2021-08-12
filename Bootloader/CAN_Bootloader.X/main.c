#include <atmel_start.h>
#include <stdint.h>
#include <string.h>
#include <utility_support.h>


typedef struct app_state_machine{
    uint8_t state;
}app_state_machine_type; 
enum states{
    ERROR = 0,
    INIT,
    SERIAL_READ
};





#define MAX_FLASH_PAGE_SIZE_IN_BYTE     128


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
    int can_id;
    int len;
    uint8_t can_data[8];
}can_data_type;











uint32_t page_size = 255;
uint16_t i;
//------------------------------------------------------------------------------------
void write_array_data_to_flash(uint8_t * data , int * length , int* abs_adress);
int get_flash_page_size();
int check_flash_data_array(uint8_t * data , int * length , int* abs_adress);
void read_serial_data(can_data_type * can);









//------------------------------------------------------------------------------------

int main(void)
{
	atmel_start_init();
   
    /* Machine states data */
    app_state_machine_type app; //state
    can_data_type can; // hold the can data
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
    
    
    app.state = INIT;
    io_write(serial_io , (uint8_t *)"CAN/UART Bootloader!\n\r", 22);   
	while (1) {
        switch(app.state){
            case INIT:
                
                app.state = SERIAL_READ;
            break;
            
            
            case SERIAL_READ: // read the serial data
                read_serial_data(&can);
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
    uint8_t compare = strcmp(data , temp_data);
    
    #if BOOTLOADER_EVENT_PRINT_ENABLE
        printf("DRV: Flash write check! strcmp->%d!\n\r",compare);
    #endif

    return compare ? 0 : 1; // Compare the data byte by byte if same then strcmp'll give 0
}
//------------------------------------------------------------------------------------
void read_serial_data(can_data_type * can)
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
            
			
			// Copy the len from the data bytes and convert it to actual values
			serial_recv_can_len[0] = recv_serial_frame[3];
			serial_can_tx_len = hexadecimalToDecimal(serial_recv_can_len);
            
            printf("can len str %s\n\r",serial_recv_can_id_temp);
            printf("Serial %d\n\r",serial_buff_size);

			int index = 0;
			for(i = 4 ; (i < (4 + (serial_can_tx_len*2))) && (i<serial_buff_size) ; i+=2){ // One byte means 2 character in serial
				can_tx_data[0] = recv_serial_frame[i];
				can_tx_data[1] = recv_serial_frame[i+1];
				serial_can_data[index++] = hexadecimalToDecimal(can_tx_data);
			}
            for(int i= 0 ; i<8 ; i++ )
                printf("%d-",serial_can_data[i]);
           
			memset(recv_serial_frame ,0 ,25);
            memset(serial_can_data ,0 ,8);
			uart_frame_received = 0;	// One frame has processed start receiving new frame	
		}	
}
