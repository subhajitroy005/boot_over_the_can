#include "serial_drv_linux.h"

/*
Serial interface related variables__________________________
*/
int serial_io; // Contains the serial interface related data
struct termios serial_io_struct; // Serial IO configuratin structure 




void config_serial_port(char* port_name)
{
        // Opening the port
        serial_io = open (port_name, O_RDWR | O_NOCTTY | O_SYNC);
        if (serial_io < 0){
                printf("Error opening %s: %s\n\r", port_name, strerror(errno));
                exit(EXIT_FAILURE);
        }

        // Set the attributes
        memset (&serial_io_struct, 0, sizeof(serial_io_struct));
        if(tcgetattr (serial_io, &serial_io_struct) != 0){
                printf("Error from tcgetattr: %s\n\r", strerror(errno));
                exit(EXIT_FAILURE);
        }
        cfsetospeed(&serial_io_struct, SERIAL_WRITE_BAUD);
        cfsetispeed(&serial_io_struct, SERIAL_READ_BAUD);

        // Configuration
        serial_io_struct.c_cflag = (serial_io_struct.c_cflag & ~CSIZE) | CS8;     // 8-bit chars
        // disable IGNBRK for mismatched speed tests; otherwise receive break
        // as \000 chars
        serial_io_struct.c_iflag &= ~IGNBRK;                    // disable break processing
        serial_io_struct.c_lflag = 0;                           // no signaling chars, no echo,
                                                                // no canonical processing
        serial_io_struct.c_oflag = 0;                           // no remapping, no delays
        serial_io_struct.c_cc[VMIN]  = 0;                       // read doesn't block
        serial_io_struct.c_cc[VTIME] = SERIAL_READ_TIMEOUT;     // 0.5 seconds read timeout
        serial_io_struct.c_iflag &= ~(IXON | IXOFF | IXANY);    // shut off xon/xoff ctrl
        serial_io_struct.c_cflag |= (CLOCAL | CREAD);           // ignore modem controls,
                                                                // enable reading
        serial_io_struct.c_cflag &= ~(PARENB | PARODD);         // shut off parity
        serial_io_struct.c_cflag |= 0;
        serial_io_struct.c_cflag &= ~CSTOPB;
        serial_io_struct.c_cflag &= ~CRTSCTS;

        if(tcsetattr (serial_io, TCSANOW, &serial_io_struct) != 0){
                printf("Error from tcsetattr: %s\n\r", strerror(errno));
                exit(EXIT_FAILURE);
        }
        printf("Serial OPEN: OK\n\r");
}


void write_serial_string(char* string_data)
{       
        #if OUTGOING_SERIAL_DRIVER_PRINT
                printf("SERIAL Driver: write: :%s: len->:%d:\n\r",string_data, strlen(string_data));
        #endif
        int data_written = write(serial_io, string_data, strlen(string_data));
        if(data_written != strlen(string_data)){
                printf("Alert! Serial write err: Data not transmitted completely\n\r");
                exit(EXIT_FAILURE);
        } else {
                #if OUTGOING_SERIAL_DRIVER_PRINT
                        printf("SERIAL Driver: write success!\n\r");
                #endif
        }
}

void read_serial_string(uint8_t * buffer)
{       int len = 0;
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
}