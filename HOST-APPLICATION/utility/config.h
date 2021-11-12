#ifndef _CONFIG_H_
#define _CONFIG_H_
/*
* ALL SERIAL configuration
*/
#define SERIAL_READ_BAUD                B115200
#define SERIAL_WRITE_BAUD               B115200
#define SERIAL_READ_TIMEOUT             5    //*100ms
#define MAX_INCOMMING_STRING_LENGTH     100
#define MAX_OUTGOING_STRING_LENGTH      100
#define SERIAL_START_CHAR               't'
#define SERIAL_TERM_CHAR                '\n'


/*
* HEX file related definition
*/
#define REC_LENGTH_START_INDEX  0
#define REC_LENGTH_LENGTH       2
#define ADDR_START_INDEX        2
#define ADDR_LENGTH             4
#define REC_TYPE_START_INDEX    6
#define REC_TYPE_LENGTH         2
#define DATA_START_INDEX        8
#define DATA_LENGTH             2


/* 
* Debug Macros
*/
//------------    Driver --------------------------------------
#define SERIAL_IGNORE                                   0
#define INCOMMING_SERIAL_DRIVER_PRINT                   0
#define OUTGOING_SERIAL_DRIVER_PRINT                    1
#define INCOMMING_CAN_DRIVER_PRINT                      1
#define OUTGOING_CAN_DRIVER_PRINT                       1
//------------   Functiontional -------------------------------
#define EACH_HEX_FILE_LINE_DECOMPOSE_PRINT              0   // Each hex file decompose print enable
#define FLAS_DEBUG_EN                                   1
//-------------------------------------------------------------
#endif