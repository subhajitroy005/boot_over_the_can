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
	uint8_t can_id;
	uint8_t can_data[64];
	uint8_t len;
	char * can_serial_port;
}can_context_type;


















#endif /* DATA_TYPE_SUPPORT_H_ */