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
	/*addres  related data*/
	uint32_t curr_mcu_mem_addr;
	uint32_t curr_hex_line_adress;

	/*Temp data containers*/
	uint32_t  bit32_data;
	uint8_t   bit8_data;

}flash_wr_info_type;





#endif