#include "can_driver.h"


uint8_t buffer[MAX_INCOMMING_STRING_LENGTH];
uint8_t serial_recv_can_id_temp[3] = {0};
uint16_t serial_can_tx_id = 0;
uint8_t serial_recv_can_len[1] = {0};
uint8_t serial_can_tx_len = 0;
uint8_t serial_can_data[8] = {0};
uint8_t can_tx_data[8] = {0}; // store temp hex data from can

volatile char   serial_read_buff[MAX_INCOMMING_STRING_LENGTH];
int actual_data_index = 0;

uint8_t temp_buff[3] = {0, 0 ,0};
uint8_t temp_copy_buffer[3] = {0};
uint8_t temp_buff_data[2] = {0};
uint8_t temp=0;
uint8_t	uart_tx_frame_buff[30]= {0};





void can_init(const can_context_type * can)
{
        /*______ Serial section Init________*/
        #if SERIAL_IGNORE
                printf("Serial Port init ignore\n\r");
        #else
                printf("\tSerial port configuration -> %s\n", can->can_serial_port);
                config_serial_port(can->can_serial_port); // If the seril init not enabled in debug
        #endif

        write_serial_string("S6\r");
        read_serial_string(buffer);
        write_serial_string("O\r");
        read_serial_string(buffer);

        printf("Done write the seral configurarion\n");
}

void can_de_init(const can_context_type * can)
{
        write_serial_string("C\r");
}

void can_write(can_context_type * can)
{
        // Serial String Format tiiildddd..dd\n | max data is the byte
       
        memset(uart_tx_frame_buff , 0 , 30);

        memset(temp_buff , 0 , 3);
        memset(temp_copy_buffer , 0 , 3);
        memset(temp_buff_data , 0 , 2);

        #if OUTGOING_CAN_DRIVER_PRINT
	printf("---------------------------------------\n");
	#endif

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


        memset(temp_buff , 0 , 3);
        memset(temp_copy_buffer , 0 , 3);
        memset(temp_buff_data , 0 , 2);




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
        int j=5;
	for(i=0 ; i < can->len; i++){
                memset(temp_buff , 0 , 3);
                memset(temp_copy_buffer , 0 , 3);
                memset(temp_buff_data , 0 , 2);

		sprintf(temp_buff_data , "%x" , can->can_data[i]);
		/* swap \0 and single character convention */
		if(can->can_data[i]<16){
			temp = temp_buff_data[0];
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
		// strcat(uart_tx_frame_buff , temp_buff_data); // Problem with strcat SEGFAULT occurs
                uart_tx_frame_buff[j++] = temp_buff_data[0];
                uart_tx_frame_buff[j++] = temp_buff_data[1];	

                #if OUTGOING_CAN_DRIVER_PRINT
		printf("-[%d]:%s:-",can->can_data[i], temp_buff_data);
		#endif					 
	}
        #if OUTGOING_CAN_DRIVER_PRINT
        printf("\n---------------------------------------\n");
        #endif

	/* a \r should be padded after the bytes 5+ (i*2) */
	uart_tx_frame_buff[5+(i*2)] = '\r';											
	// Length of total bytes Not using right now
        //int serial_data_len = (6+(i*2));

        #if OUTGOING_CAN_DRIVER_PRINT
                printf("[CAN DRV] Write :%s:\n",uart_tx_frame_buff);
        #endif

        write_serial_string(uart_tx_frame_buff);                    
}

void can_read(can_context_type * can)
{
        memset(buffer , 0 , sizeof(buffer));
        memset(serial_can_data ,0 ,8);
        memset(serial_recv_can_id_temp ,0 ,3);
        memset(serial_recv_can_len ,0 ,1);
        memset(can_tx_data ,0 ,8);
        memset(serial_read_buff , 0 , MAX_INCOMMING_STRING_LENGTH);
        #if INCOMMING_CAN_DRIVER_PRINT
                printf("---------------------------------------\n");
                printf("[CAN DRV] Serial req!\n");
        #endif

        int byte_read = read_serial_string(buffer);
        #if INCOMMING_CAN_DRIVER_PRINT
                printf("[CAN DRV] GET str :%s: len->[%d]\n",serial_read_buff, byte_read);
        #endif


        #if INCOMMING_CAN_DRIVER_PRINT
        printf("[CAN DRV] Current Packet :%s:\n", buffer);
        #endif

        int i =0;
        for(i = 0 ; i<3 ; i++){
	        serial_recv_can_id_temp[i] = buffer[i];
	}
        serial_can_tx_id = hexadecimalToDecimal(serial_recv_can_id_temp);

        #if INCOMMING_CAN_DRIVER_PRINT
        printf("[CAN DRV] Segmented ID: %s\n",serial_recv_can_id_temp);
        #endif
        #if INCOMMING_CAN_DRIVER_PRINT
        printf("[CAN DRV] Converted ID [0x%x]\n", serial_can_tx_id);
        #endif

        can->can_id = serial_can_tx_id;



	// Copy the len from the data bytes and convert it to actual values
	serial_recv_can_len[0] = buffer[3];
	serial_can_tx_len = hexadecimalToDecimal(serial_recv_can_len);

        #if INCOMMING_CAN_DRIVER_PRINT
        printf("[CAN DRV] Converted LEN: %d\n",serial_can_tx_len);
        #endif

        can->len = serial_can_tx_len;

        //printf("can len str %s\n\r",serial_recv_can_id_temp);
        //printf("Serial %d\n\r",serial_buff_size);
	int index = 0;
	for(i = 4 ; (i < (4 + (serial_can_tx_len*2)) ) ; i+=2){ // One byte means 2 character in serial
	        can_tx_data[0] = buffer[i];
		can_tx_data[1] = buffer[i+1];
		serial_can_data[index++] = hexadecimalToDecimal(can_tx_data);
	}
        #if INCOMMING_CAN_DRIVER_PRINT
        printf("[CAN DRV] Converted data: ");
        #endif

        for(int i= 0 ; i<8 ; i++ ){

                #if INCOMMING_CAN_DRIVER_PRINT
                printf("-%d[0x%x]-",serial_can_data[i], serial_can_data[i]);
                #endif

                can->can_data[i] = serial_can_data[i];
        }

        #if INCOMMING_CAN_DRIVER_PRINT
        printf("\n---------------------------------------\n");
        #endif
     
}