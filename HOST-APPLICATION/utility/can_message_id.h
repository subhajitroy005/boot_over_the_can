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




#define CAN_START_FLASH_WRITE           (0x7FF)
#define CAN_SEND_FLASH_DATA             (0x7FE)
#define CAN_SEND_PAGE_COMPLETE          (0x7FD)
#define CAN_SEND_EXT_SEG_ADDR           (0x7FC)
#define CAN_SEND_JUMP_TO_APP            (0x7FB)
#define CAN_SENT_FLASH_WRITE_ERROR      (0x7FA)

/*   Not in use 
#define CAN_SEND_FLASH_ADRESS           2
#define CAN_SEND_EOF                    4
#define CAN_SEND_START_SEG_ADDR         6
#define CAN_SEND_EXT_LIN_ADDR           7
#define CAN_SEND_START_LIN_ADDR         8


#define CAN_SEND_DATA_WRITE_READY       11
#define CAN_SEND_EOF_MCU_RESET          12
*/



#endif