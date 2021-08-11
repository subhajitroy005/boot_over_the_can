#include <atmel_start.h>
//#include <stint.h>

uint8_t data[5] = "START";  
uint8_t cmd[3] = "ASK";
uint8_t serial_read_char_buff[1];
struct io_descriptor *serial_com;

int main(void)
{
	atmel_start_init();
        
        
	usart_sync_get_io_descriptor(&USART_0, &serial_com);
	usart_sync_enable(&USART_0);
    
	
        
	
	while (1) {
        if(usart_sync_is_rx_not_empty(&USART_0)){
            io_read(serial_com, serial_read_char_buff , 1);// READ 1 character
            io_write(serial_com, serial_read_char_buff, 1);
        }
        if(serial_read_char_buff[0] ==  '\r'){
            io_write(serial_com, (uint8_t*)"Hello\n\r", 7);
            memset(serial_read_char_buff , 0 , 1);
        }
	}
        
        return 0;
}
