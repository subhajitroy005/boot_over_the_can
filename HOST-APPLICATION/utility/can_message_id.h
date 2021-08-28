/*
* Define all the can message ID here 
*/
#ifndef _CAN_MESSAGE_ID_H_
#define _CAN_MESSAGE_ID_H_


#define CAN_DATA_LENGTH_IN_PACKET       8 

enum com_standard{
	CAN_TXN_ERROR = 0,
	CAN_TXN_QUERY,
	CAN_TXN_ACK
};




#define CAN_START_FLASH_WRITE           1
#define CAN_SEND_FLASH_ADRESS           2
#define CAN_SEND_FLASH_DATA             3
#define CAN_SEND_EOF                    4
#define CAN_SEND_EXT_SEG_ADDR           5
#define CAN_SEND_START_SEG_ADDR         6
#define CAN_SEND_EXT_LIN_ADDR           7
#define CAN_SEND_START_LIN_ADDR         8
#define CAN_SEND_JUMP_TO_APP            9
#define CAN_SEND_PAGE_COMPLETE          10
#define CAN_SEND_DATA_WRITE_READY       11
#define CAN_SEND_EOF_MCU_RESET          12
#define CAN_SENT_FLASH_WRITE_ERROR      13



#endif