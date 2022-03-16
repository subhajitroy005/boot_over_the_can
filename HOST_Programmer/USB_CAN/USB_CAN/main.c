/*

* Device:  CAN to USB Converter
* USB Stream: t xxx[CAN ID] x[Data length In byte] xxxxxxxx[Data Bytes] '\r'


* Release Date:
* Last Modified:

*Subhajit Roy | subhajitroy005@gmail.com

*/
/*__________________________________________________________________________________________________________
************************************************************************************************************
____________________________________________________________________________________________________________
*/
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>
#include <atmel_start.h>
#include <utility_support.h>
#include <c_queue_array.h>
#include <zen_can_api.h>

#define pin  GPIO(GPIO_PORTB , 4)

/*						GLOBAL STRUCTURE and VARIABLES	*/
/*________________________________________________________________________________*/
// USART Related global variables
struct io_descriptor *lv_io;		// Instance for USART LabVIEW serial

unsigned char rw_flag;				// 1: Means wecan send data to labview 0:


// CAN related global variables
volatile queue can_rx_queue;	// receive Information in queue and send to PC
typedef union _can_data_union
	{
		uint8_t data[8];
		uint32_t data_32bit[2];
	}can_union;
can_frame_type can_tx_frame;
can_frame_type can_rx_frame;
int can_rx_event=0;

uint8_t temp_buff[3] = {0, 0 ,0};
uint8_t temp_copy_buffer[3] = {0};
uint8_t temp_buff_data[2] = {0};
uint8_t temp=0;
uint8_t	uart_tx_frame_buff[30]= {0};

uint32_t txid = 0;
uint8_t txlen = 0;
uint8_t id_tx[3];
uint8_t len_tx[1];
uint8_t tx_temp[2];

uint32_t id;
uint8_t len;

/*				FUNCTION PROTO					*/
/*______________________________________________________________________________*/




/*				ISR                                               */
/*________________________________________________________________________________*/
void can_rx_cb_fxn()
{
	can_rx_event++;
}



/*			MAIN							  */
/*________________________________________________________________________________*/
int main(void)
{
	atmel_start_init();

	/* USART Initialization */
	usart_sync_get_io_descriptor(&USART_0, &lv_io);	// Get the descriptr
	usart_sync_enable(&USART_0);					// Enable The USART


	/*CAN related settings */
	can_begin(&CAN_1 , CAN1 , 500 , 73);                  // Initialize the CAN0 instance at 500 kbps
	can_set_rxcb(&CAN_1 , (FUNC_PTR)can_rx_cb_fxn);  // Set the can rx callback function
	can_set_filter(&CAN_1 , 0 , 0 , STD_ID);         // Set the filter for receiving all the message
	can_union rx_data_conv;


	gpio_set_pin_direction(pin , GPIO_DIRECTION_OUT);

	/* CAN read operation related variable */
	// Write frame_vars_________________________________

	uint8_t data[8];
	unsigned char index = 0;
	//unsigned char lsb_len;
	//unsigned char msb_len;
	int i;
	uint8_t id_string_buff[3];
	uint8_t len_string_buff[1];
	uint8_t string_buff[22];

	memset(id_string_buff ,0 , 3);
	len_string_buff[0] = 0;
	memset(string_buff, 0, 22);

	// Read frame vars ________________________________
	uint8_t read_char_buff[1];			// Read every character from LabVIEW
	uint8_t send_can_data_buff[16];


	uint8_t send_can_data[8];
	unsigned char data_index;

	int length = 0;		// track index of incomming frame from LabVIEW
	int temp_tx_hold;
	unsigned char id_receive;
	unsigned char len_receive;
	unsigned char data_recv;
	memset(can_tx_frame.data,0,8);
	memset(send_can_data_buff,0,16);
	memset(tx_temp,0,2);
	memset(id_tx,0,3);




	/* _______Operation Start _________________________________*/
	rw_flag = 1; // By default set to 1 for read data


	io_write(lv_io,(uint8_t*)"HELLO\r\n",7);
	while (1){

		/* Read byte ____________________________________________________________________________*/
		if(usart_sync_is_rx_not_empty(&USART_0)){
			io_read(lv_io, read_char_buff, 1);

			if(read_char_buff[0] == '\n'){    // \r means frame is complete and send to further process of the frame

				txid = hexadecimalToDecimal(id_tx);
				txlen = hexadecimalToDecimal(len_tx);

				for(i=0; i < length ; i+=2){
					tx_temp[0] = send_can_data_buff[i];
					tx_temp[1] = send_can_data_buff[i+1];
					can_tx_frame.data[data_index++] = hexadecimalToDecimal(tx_temp);
				}

				can_send(&CAN_1 ,txid, STD_ID ,txlen ,can_tx_frame);

				memset(can_tx_frame.data,0,8);
				memset(send_can_data_buff,0,16);
				memset(tx_temp,0,2);
				memset(id_tx,0,3);
				rw_flag = 1; // reading ocmplete so we can write to LV
			} else if(read_char_buff[0] == 't') { // After getting 't' in a frame means other data after it is data content
				length = 0;
				rw_flag  = 0; // A frame is comming from LV so No write to LabVIEW
				id_receive = 1; // First accept the ID
				len_receive = 0;
				data_recv = 0;
				data_index = 0;
				txid = 0;
				txlen = 0;
			} else {
				if(data_recv){ // Third  characters are data
					send_can_data_buff[length++] = read_char_buff[0];
				}

				if(len_receive){ //  Second  1 character is len
					len_tx[0] =  read_char_buff[0];
					len_receive = 0;
					data_recv = 1;
				}

				if(id_receive){ //First 3 character is id
					id_tx[length++] = read_char_buff[0];
					if(length == 3) { //Id receive complete
						id_receive = 0;
						len_receive = 1;
						length = 0;
					}
				}
			}
		}



		/* Write frmae from Incomming can Message _________________________________________________________*/
		if(rw_flag && (can_rx_event>0) ){ // If there are some message in queue send to labview
			gpio_set_pin_level(pin , true);

			index  = 0;

			// Peak the queue___________________________________________
			can_receive(&CAN_1 , &id , &can_rx_frame , &len); // Receive Incoming Data into rx frame and id

			/* Conversion */
			memset(uart_tx_frame_buff , 0 , 30);
			memset(temp_buff , 0 , 3);
			memset(temp_copy_buffer , 0 , 3);
			memset(temp_buff_data , 0 , 2);



			/*First element of the string is 't' */
			uart_tx_frame_buff[0] = 't';

			/* CAN ID convert to string and concat to uart_tx_buffer */
			//itoa (can->can_id,temp_buff,16);
			sprintf(temp_buff, "%x", id);
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

			strcat(uart_tx_frame_buff , temp_copy_buffer); /* concat with the uart_tx_frame_buffer*/


			memset(temp_buff , 0 , 3);
			memset(temp_copy_buffer , 0 , 3);
			memset(temp_buff_data , 0 , 2);

			/*data len converted to sting and transmit */
			uart_tx_frame_buff[4] = (uint8_t)(len+48); /* Length cann't be greater than 4 so put it as same posion is 4th byte*/


			/* 8 byte data conversion and concat to uart_tx_frame_buff */
			i= 0;
			int j=5;
			for(i=0 ; i < len; i++){
				memset(temp_buff , 0 , 3);
				memset(temp_copy_buffer , 0 , 3);
				memset(temp_buff_data , 0 , 2);

				sprintf(temp_buff_data , "%x" , can_rx_frame.data[i]);
				/* swap \0 and single character convention */
				if(can_rx_frame.data[i]<16){
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

			}

			//io_write(lv_io , temp_buff_data, 2);
			/* a \r should be padded after the bytes 5+ (i*2) */
			uart_tx_frame_buff[5+(i*2)] = '\n';
			int serial_data_len = (6+(i*2));
			/* Send string to to Serial */
			//uint8_t * uint8_data = (uint8_t *)uart_tx_frame_buff;

			io_write(lv_io , uart_tx_frame_buff, serial_data_len);

			// POP The queue
			pop(&can_rx_queue); // POP the queue after operation
			can_rx_event--;
			gpio_set_pin_level(pin , false);
		}
	}
}