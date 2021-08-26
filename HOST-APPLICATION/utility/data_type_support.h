#ifndef _DATA_TYPE_SUPPORT_H_
#define _DATA_TYPE_SUPPORT_H_

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <inttypes.h>
#include <stdlib.h>
#include <ctype.h>
/*
Serial Interface related________________________________
*/
#include <errno.h>
#include <fcntl.h> 
#include <string.h>
#include <termios.h>
#include <unistd.h>

#include <time.h>

#define CAN 1
#define USB 2





#define FILE_OBJ_TYPE                   FILE*      // File operation related macro
#define SERIAL_PORT_TYPE                
/*
*_______________________________________________________
                Machine state Data type
________________________________________________________
*/
typedef struct task_states{
        int state;
        int error;
}type_machine_state;

enum machine_states_declaration{
	ERROR = 0,
	INIT,
	READ_FILE,
	WAIT_FOR_REPLY,
	FLASH_WRITE,
	START_BOOT_FLASH_WRITE,
	READ_SERIAL_CAN_DATA,
	DECODE_CAN_DATA,
	DECODE_HEX_FILE,
	RESET_MCU,
	APP_EXIT
};

/*
*_______________________________________________________
                Queue Data type
________________________________________________________
*/
typedef struct _node // each queue node 
{
	uint8_t data[100];      // Each node will hold data of 
                                //each line of hexfile
	struct _node *next;
}node;

typedef struct _queue // Queue
{
	node * head;
	node * tail;
	unsigned int size;
}queue;

/*
*_______________________________________________________
                CAN Comm Data type
________________________________________________________
*/
typedef struct _can_context //
{
	uint8_t can_id;
	uint8_t can_data[64];
	uint8_t len;
	char * can_serial_port;
}can_context_type;

/*
*______________________________________________________
		Flash write related
_______________________________________________________
*/
typedef struct _each_hex_line_info{
	uint8_t data[200];	// contains the data field
	int 	data_len;	// Data length
	uint32_t data_start_adress;	// MCU write start adress
	int	data_type;     // Type of data []
	uint8_t whole_line_temp_buff[200]; // temp buffer for read a line form queue
}each_hex_line_info_type;


typedef struct flash_wr_info{
	uint32_t curr_page_addr;
	uint32_t last_sent_ext_lin_addr;
	uint32_t wr_success_page_counter;
	uint32_t write_page_byte_counter; 
	uint32_t curr_mcu_page_adress;
	
	/* Flash data tracking related info */
	uint32_t byte_track_in_line; // track the number of bytes in line
	uint32_t page_byte_counter;
	uint8_t mcu_data_accept_ready;
	uint32_t byte_seq_counter;
	uint8_t first_time_data_sent;
	uint8_t first_time_data_read; // if no extend linerar adress send to mcu first time
	uint8_t last_page_sent;

	/* Temp data buffers*/
	 uint8_t temp_ext_lin_addr_buff[4]; // temp for string conv
	 uint32_t temp_ext_lin_addr; // temp for doing the bit shifting
	 uint8_t temp_data_conv_buff[2]; // temp hold the flash data hex for convert into decimal data
}flash_wr_info_type;





#endif