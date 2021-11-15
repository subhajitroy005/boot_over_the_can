/*
 * data_type_support.h
 *
 * Created: 12-11-2021 19:35:24
 *  Author: subhajitr
 */ 


#ifndef DATA_TYPE_SUPPORT_H_
#define DATA_TYPE_SUPPORT_H_

#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <ctype.h>


/* App related variables  */
typedef struct app_state_machine{
	uint8_t state;
}app_state_machine_type;
app_state_machine_type app; //state
enum states{
	ERROR = 0,
	INIT,
	SERIAL_CAN_READ,
	DECODE_CAN_DATA,
	FLASH_WRITE,
	JUMP_TO_APPLICATION,
	RESET_AT_BOOT_ERROR
};











/* Main application to can driver support */
typedef struct _can_context //
{
	uint32_t can_id;
	uint8_t can_data[64];
	uint32_t len;
	char * can_serial_port;
}can_context_type;


/* Flash write related variables */
typedef struct flash_wr_info{
	/* Flash adress related */
	uint32_t	curr_flash_write_addr; // Current flash write address track the adress data to be written
	
	/* Buffers for flash write*/
	uint8_t		flash_wr_buffer[128]; // MAX page size related
	int		flash_wr_buffer_index;
	
	/* Counters */
	int page_byte_seq;
	
	
	

	/* Temp data buffers*/
	uint32_t temp_32bit_data;
	
	
	
	
	
	
	
	
	
}flash_wr_info_type;


















#endif /* DATA_TYPE_SUPPORT_H_ */