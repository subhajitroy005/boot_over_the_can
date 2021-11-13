#include "can_driver.h"

/* ASF 4 driver related macros */



struct io_descriptor * serial_io;	// Instance for USART LabVIEW serial



uint8_t buffer[MAX_INCOMMING_STRING_LENGTH];
uint8_t serial_recv_can_id_temp[3] = {};
uint32_t serial_can_tx_id = 0;
uint8_t serial_recv_can_len[1] = {};
uint8_t serial_can_tx_len = 0;
uint8_t serial_can_data[8] = {};
uint8_t can_tx_data[8] = {}; // store temp hex data from can


uint8_t temp_buff[3] = {0, 0 ,0};
uint8_t temp_copy_buffer[3] = {};
uint8_t temp_buff_data[2] = {};
uint8_t	uart_tx_frame_buff[23]= {};



uint8_t temp_char_buff[1] = {0};
uint8_t frame_received = 0;
uint8_t rx_buffer[MAX_INCOMMING_STRING_LENGTH] = {0};
uint8_t rx_buff_index = 0;


void can_init(const can_context_type * can)
{
       usart_sync_get_io_descriptor(&TARGET_IO, &serial_io);	// Get the descriptor
}


void can_write(can_context_type * can)
{
	/*	--------------------------------------
		Communication mode is CAN 
		--------------------------------------
	*/
	#if (BOOT_MODE == CAN_MODE)
	
	
	
	
	
	
	/*	--------------------------------------
		Communication mode is USB Serial 
		--------------------------------------
	*/
	#else 	
	
        // Serial String Format tiiildddd..dd\n | max data is the byte
        memset(uart_tx_frame_buff , 0 , 23);
        memset(temp_buff , 0 , 3);
        memset(temp_copy_buffer , 0 , 3);
        memset(temp_buff_data , 0 , 2);
	
        /*First element of the string is 't' */
        uart_tx_frame_buff[0] = 't';							
        
        /* CAN ID convert to string and concat to uart_tx_buffer */
	//itoa (can->can_id,temp_buff,16);
        sprintf(temp_buff, "%x", can->can_id);

        // zero padding in MSb
        switch(strlen(temp_buff)){
		case 1: //if len is 1 the padding 0 to first 2 place
			temp_copy_buffer[0] = 0;
			temp_copy_buffer[1] = 0;
			temp_copy_buffer[2] = temp_buff[0];
		break;
            
		case 2: //if len is 1 the padding 0 to first 2 place
			temp_copy_buffer[0] = 0;
			temp_copy_buffer[1] = temp_buff[0];
			temp_copy_buffer[2] = temp_buff[1];
		break;
            
		case 3: //if len is 1 the padding 0 to first 2 place
			temp_copy_buffer[0] = temp_buff[0];
			temp_copy_buffer[1] = temp_buff[1];
			temp_copy_buffer[2] = temp_buff[2];
		break;
            
		default: // never happen unless the ID is out of valid range
		break;
	}
	int i = 0;
	for(i=0; i < 3 ; i++){		
		if((temp_copy_buffer[i] >= 'a') && (temp_copy_buffer[i] <= 'f'))
			temp_copy_buffer[i] = toupper(temp_copy_buffer[i]);
		else if(temp_copy_buffer[i] == 0)
			temp_copy_buffer[i] = 48; // ascii of 0
		else{}
	}
        
	#if OUTGOING_CAN_DRIVER_PRINT
	printf("[CAN DRV] WR Seg ID [%d] :%s:\n", can->can_id, temp_copy_buffer);
	#endif
	       				
	strcat(uart_tx_frame_buff , temp_copy_buffer); /* concat with the uart_tx_frame_buffer*/	
	/*data len converted to sting and transmit */
	uart_tx_frame_buff[4] = (uint8_t)(can->len+48); /* Length cann't be greater than 4 so put it as same posion is 4th byte*/
	
	#if OUTGOING_CAN_DRIVER_PRINT
	printf("[CAN DRV] WR Seg Len [%d] :%c:\n",can->len,uart_tx_frame_buff[4]);
	#endif
	#if OUTGOING_CAN_DRIVER_PRINT
	printf("[CAN DRV] WR Seg data: ");
	#endif		
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
			
		#if OUTGOING_CAN_DRIVER_PRINT
		printf("-[%d]:%s:-",can->can_data[i], temp_buff_data);
		#endif	
		/* concatenate to the main sting according to LSB to MSB
		one by one after every byte convention in loop*/
		strcat(uart_tx_frame_buff , temp_buff_data);						 
	}
        #if OUTGOING_CAN_DRIVER_PRINT
        printf("\n");
        #endif 
	       
	//io_write(lv_io , temp_buff_data, 2);
	/* a \r should be padded after the bytes 5+ (i*2) */
	uart_tx_frame_buff[5+(i*2)] = '\n';											
	int serial_data_len = (6+(i*2));
	/* Send string to to Serial */
        uint8_t * uint8_data = (uint8_t *)uart_tx_frame_buff;

        #if OUTGOING_CAN_DRIVER_PRINT
                printf("[CAN DRV] WR Write :%s:\n",uart_tx_frame_buff);
        #endif

	io_write(serial_io , uart_tx_frame_buff, serial_data_len); // Calculate based on the data len
	
	#endif                  
}

int can_read(can_context_type * can)
{
	/*	--------------------------------------
		Communication mode is CAN 
		--------------------------------------
	*/
	#if (BOOT_MODE == CAN_MODE)
	
	
	
	
	
	
	/*	--------------------------------------
		Communication mode is USB Serial 
		--------------------------------------
	*/
	#else 
	
	/* Read characters */
	if(usart_sync_is_rx_not_empty(&TARGET_IO)){ //

		io_read(serial_io, temp_char_buff , 1);
			
		//printf(":%c-",temp_char_buff[0]);
		if(temp_char_buff[0] == 't'){	// If the character is t reset all the values and start sampling the frame
			rx_buff_index = 0; // Start the string	
		} else if((temp_char_buff[0] == '\n')) {	// If \r received then stop sampling character and start process the frame.
			frame_received = 1;
		} else {
			if(rx_buff_index < MAX_INCOMMING_STRING_LENGTH)
				rx_buffer[rx_buff_index++] = temp_char_buff[0]; // Fill the buffer character by character
		}	
	}
	
	/*  One complete usb frame is received and process the frame */
	if(frame_received){
		frame_received = 0;
		
		int len = 0;
		
		memset(serial_can_data ,0 ,8);
		memset(serial_recv_can_id_temp ,0 ,3);
		memset(serial_recv_can_len ,0 ,1);
		memset(can_tx_data ,0 ,8);

		#if INCOMMING_CAN_DRIVER_PRINT
		printf("[CAN DRV] Serial frame received !\n");
		#endif
		

		#if INCOMMING_CAN_DRIVER_PRINT
		printf("[CAN DRV] Read %s\n", rx_buffer);
		#endif

		int i =0;
		for(i = 0 ; i<3 ; i++){
			serial_recv_can_id_temp[i] = rx_buffer[i];
		}
		serial_can_tx_id = hexadecimalToDecimal(serial_recv_can_id_temp);

		#if INCOMMING_CAN_DRIVER_PRINT
		printf("[CAN DRV] Segmented ID: :%s: ->[%d]\n",serial_recv_can_id_temp,serial_can_tx_id);
		#endif
		
		can->can_id = serial_can_tx_id;
		
		// Copy the len from the data bytes and convert it to actual values
		serial_recv_can_len[0] = rx_buffer[3];
		serial_can_tx_len = hexadecimalToDecimal(serial_recv_can_len);

		#if INCOMMING_CAN_DRIVER_PRINT
		printf("[CAN DRV] Segmented LEN: [%d]\n",serial_can_tx_len);
		#endif

		can->len = serial_can_tx_len;

		//printf("can len str %s\n\r",serial_recv_can_id_temp);
		//printf("Serial %d\n\r",serial_buff_size);
		int index = 0;
		for(i = 4 ; (i < (4 + (serial_can_tx_len*2)) ) ; i+=2){ // One byte means 2 character in serial
			can_tx_data[0] = rx_buffer[i];
			can_tx_data[1] = rx_buffer[i+1];
			serial_can_data[index++] = hexadecimalToDecimal(can_tx_data);
		}
		#if INCOMMING_CAN_DRIVER_PRINT
		printf("[CAN DRV] Segmented data: ");
		#endif

		for(int i= 0 ; i<8 ; i++ ){

			#if INCOMMING_CAN_DRIVER_PRINT
			printf("-%d[0x%x]-",serial_can_data[i], serial_can_data[i]);
			#endif

			can->can_data[i] = serial_can_data[i];
		}

		#if INCOMMING_CAN_DRIVER_PRINT
		printf("\n");
		#endif
		
		memset(rx_buffer,0,MAX_INCOMMING_STRING_LENGTH);
		
		
		return 1;
		
		
		
	}
	#endif
	
	return 0;       
}