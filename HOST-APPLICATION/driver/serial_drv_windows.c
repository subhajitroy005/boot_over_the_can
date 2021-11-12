#include "serial_drv_windows.h"

/*
Serial interface related variables__________________________
*/
HANDLE          serial_io_reference;                            // Contains the serial interface reference 
COMMTIMEOUTS    serial_io_time_out;                             // For timeout settings     
COMMCONFIG      serial_io_dcbSerialParams;                      // Config serial port parameters	
DWORD           dwBytesWritten, dwBytesRead , event_mask;       // unsigned long data types
volatile char   serial_read_buff[MAX_INCOMMING_STRING_LENGTH] ,
                serial_write_buff[MAX_OUTGOING_STRING_LENGTH]; // Serial read write buffer



void config_serial_port(char* port_name)
{
        /* Open the virtual com IO file */
        serial_io_reference = CreateFile(port_name, GENERIC_READ | GENERIC_WRITE, \
                              0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
        
        if(serial_io_reference == NULL){ // If it is null then problem with serial
                printf("[SERIAL DRV][ ERR ] Opening serial poart!\n");
                exit(EXIT_FAILURE);
        }


        /* Setting serial config parameters */
        GetCommState(serial_io_reference, &serial_io_dcbSerialParams.dcb);

        serial_io_dcbSerialParams.dcb.DCBlength           = sizeof(serial_io_dcbSerialParams.dcb);
	serial_io_dcbSerialParams.dcb.BaudRate            = CBR_115200; // Ssrial baud 115200
	serial_io_dcbSerialParams.dcb.ByteSize            = 8;
	serial_io_dcbSerialParams.dcb.StopBits            = ONESTOPBIT;
	serial_io_dcbSerialParams.dcb.Parity              = NOPARITY;
	serial_io_dcbSerialParams.dcb.fBinary             = TRUE;
	serial_io_dcbSerialParams.dcb.fDtrControl         = DTR_CONTROL_ENABLE;
	serial_io_dcbSerialParams.dcb.fRtsControl         = RTS_CONTROL_DISABLE;
	serial_io_dcbSerialParams.dcb.fOutxCtsFlow        = FALSE;
	serial_io_dcbSerialParams.dcb.fOutxDsrFlow        = FALSE;
	serial_io_dcbSerialParams.dcb.fDsrSensitivity     = FALSE;
	serial_io_dcbSerialParams.dcb.fAbortOnError       = TRUE;

	if (!SetCommState(serial_io_reference, &serial_io_dcbSerialParams.dcb)){
		printf("[SERIAL DRV][ ERR ] setting serial port config!\n");
	}

        /* Setting serial timeout parameters */
        
        GetCommTimeouts(serial_io_reference , &serial_io_time_out );

	serial_io_time_out.ReadIntervalTimeout          = 50;
	serial_io_time_out.ReadTotalTimeoutConstant     = 50;
	serial_io_time_out.ReadTotalTimeoutMultiplier   = 10;
	serial_io_time_out.WriteTotalTimeoutConstant    = 50;
	serial_io_time_out.WriteTotalTimeoutMultiplier  = 10;

	if(!SetCommTimeouts(serial_io_reference, &serial_io_time_out)) 
	{
		printf("[SERIAL DRV][ ERR ] Setting serial port timeout!\n");
	}

        /* Set the event mask */
        event_mask = 1;
        if(!SetCommMask(serial_io_reference, event_mask)){
                printf("[SERIAL DRV][ ERR ] Setting serial event mask!\n");
        }
        //GetCommMask(serial_io_reference, &event_mask); // not require to check here

        printf("[SERIAL DRV][ OK ] Serial connection\n");
}


void write_serial_string(char* string_data)
{       
        int byte_to_write = strlen(string_data);
        /* Clear the buffer */
        memset(serial_write_buff, 0, MAX_OUTGOING_STRING_LENGTH);

        /* assign value rather than pointer */
        for(int i= 0 ; i < byte_to_write ; i++){
                serial_write_buff[i] = string_data[i];
        } 
	
	int byte_written = 0;

        #if OUTGOING_SERIAL_DRIVER_PRINT
                printf("[SERIAL DRV] Write  :%s: len->:%d:\n",string_data, strlen(string_data));
        #endif


	if(!WriteFile(serial_io_reference, serial_write_buff, byte_to_write, &dwBytesWritten, NULL)){ 
		printf("[SERIAL DRV][ ERR ] Write -> Written %d out of %d\n",byte_written, byte_to_write);
	}
}

void read_serial_string(uint8_t * buffer)
{       
        DWORD byte_read = 0;
        int actual_data_index = 0;
        memset(serial_read_buff, 0 , MAX_INCOMMING_STRING_LENGTH);
        /* Wait here for serial get any rx byte */
        WaitCommEvent(serial_io_reference, &event_mask, NULL);
        
        /* Read the data here after event complete */
        long unsigned int ret = ReadFile(serial_io_reference, serial_read_buff, MAX_INCOMMING_STRING_LENGTH, &byte_read, NULL);
        

        #if INCOMMING_SERIAL_DRIVER_PRINT
        printf("[SERIAL DRV] Read  :%s: len->%d\n",serial_read_buff, strlen(serial_read_buff));
        #endif

	/* Extract the actual data from start and terminatoin character */	
        for(int i =0 ; i < byte_read ; i++  ){
                
                /* Starting character */
                if(serial_read_buff[i] == 't'){
                        actual_data_index = 0; // reset the index as zero
                                               // So that rest part will start from zero


                /* Termination character */
                } else if(serial_read_buff[i] == '\n'){
                        // Break the loop so that we don't need the other rest part after termination
                        break;


                /* Other character */
                } else {
                    buffer[actual_data_index++] = serial_read_buff[i];
                }
           }
        
        #if INCOMMING_SERIAL_DRIVER_PRINT
        printf("[SERIAL DRV] Extracted read  :%s: len->:%d:\n", buffer , strlen(buffer));
        #endif
        
}