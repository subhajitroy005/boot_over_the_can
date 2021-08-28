#include "serial_drv_windows.h"

/*
Serial interface related variables__________________________
*/
int serial_io; // Contains the serial interface related data 




void config_serial_port(char* port_name)
{
        
        printf("Serial OPEN: OK\n\r");
}


void write_serial_string(char* string_data)
{       /*
        #if OUTGOING_SERIAL_DRIVER_PRINT
                printf("SERIAL Driver: write: :%s: len->:%d:\n\r",string_data, strlen(string_data));
        #endif
     
        if(data_written != strlen(string_data)){
                printf("Alert! Serial write err: Data not transmitted completely\n\r");
        } else {
                #if OUTGOING_SERIAL_DRIVER_PRINT
                        printf("SERIAL Driver: write success!\n\r");
                #endif
        }
        */
}

void read_serial_string(uint8_t * buffer)
{      /* int len = 0;
        uint8_t temp_char_buffer[1];

        #if INCOMMING_SERIAL_DRIVER_PRINT
                printf("SERIAL Driver: Raw data character:  ");
        #endif

        while(len<=MAX_INCOMMING_STRING_LENGTH){
                read(serial_io, temp_char_buffer, 1);
                if(temp_char_buffer[0] == 't'){	// If the character is t reset all the values and start sampling the frame
                        int len = 0;				   
		} else if((temp_char_buffer[0] == '\n') || (temp_char_buffer[0] == '\r')) {	// If \r received then stop sampling character and start process the frame. 
			break; // break before the full stirng received
		} else {
	                buffer[len++] = temp_char_buffer[0]; // Fill the buffer character by character
                        #if INCOMMING_SERIAL_DRIVER_PRINT
                                printf(" %c",temp_char_buffer[0]);
                        #endif        
	        }     
        }

        #if INCOMMING_SERIAL_DRIVER_PRINT
                printf("\n\r");
        #endif
        */
}