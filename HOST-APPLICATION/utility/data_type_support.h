#ifndef _DATA_TYPE_SUPPORT_H_
#define _DATA_TYPE_SUPPORT_H_

#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <inttypes.h>
#include <stdlib.h>
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
	ASK_PAGE_SIZE
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




#endif