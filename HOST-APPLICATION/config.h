#ifndef _CONFIG_H_
#define _CONFIG_H_
/*
ALL SERIAL configuration
*/
#define SERIAL_READ_BAUD        B115200
#define SERIAL_WRITE_BAUD       B115200
#define SERIAL_READ_TIMEOUT     5               //*100ms

#define MAX_INCOMMING_STRING_LENGTH     23

/*
CAN Related definitions
*/
#define CAN_DATA_LENGTH_IN_PACKET 8 



// Commands message ids ++++++++++++++++++++++++++++++++++++++++
#define CAN_ASK_PAGE_SIZE 1
#define CAN_SEND_FLASH_ADRESS 2
#define CAN_SEND_FLASH_DATA 3
#define CAN_SEND_EOF 4
#define CAN_SEND_EXT_SEG_ADDR 5
#define CAN_SEND_START_SEG_ADDR 6
#define CAN_SEND_EXT_LIN_ADDR 7
#define CAN_SEND_START_LIN_ADDR 8
#define CAN_SEND_JUMP_TO_APP 9
#define CAN_SEND_PAGE_COMPLETE 10
#define CAN_SEND_DATA_WRITE_READY 11
#define CAN_SEND_EOF_MCU_RESET 12
#define CAN_SENT_FLASH_WRITE_ERROR 13
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



/*
HEX file related definition
*/
#define REC_LENGTH_START_INDEX 0
#define REC_LENGTH_LENGTH 2
#define ADDR_START_INDEX 2
#define ADDR_LENGTH 4
#define REC_TYPE_START_INDEX 6
#define REC_TYPE_LENGTH 2
#define DATA_START_INDEX 8
#define DATA_LENGTH 2




/* Debug Macros */
#define SERIAL_IGNORE 0
#define INCOMMING_CAN_SERIAL_PRINT      0
#define OUTGOING_CAN_SERIAL_PRINT       0
#define EACH_HEX_FILE_LINE_DECOMPOSE_PRINT      0
#define FLAS_DEBUG_EN 1

#endif