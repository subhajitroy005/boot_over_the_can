#include <atmel_start.h>
//#include <stint.h>

uint8_t data[5] = "START";  
uint8_t cmd[3] = "ASK";

struct io_descriptor *com;

int main(void)
{
	atmel_start_init();
        
        
	usart_sync_get_io_descriptor(&USART_0, &com);
	usart_sync_enable(&USART_0);

	
        
	
	while (1) {
                io_write(com, (uint8_t *)"HELLO\n\r!", 7);
                delay_ms(1000);
	}
        
        return 0;
}
