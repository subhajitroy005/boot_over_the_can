#ifndef _CONFIG_H_
#define _CONFIG_H_
/*
ALL SERIAL configuration
*/
#define SERIAL_READ_BAUD        B115200
#define SERIAL_WRITE_BAUD       B115200
#define SERIAL_READ_TIMEOUT     5               //*100ms

#define MAX_INCOMMING_STRING_LENGTH     20

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
#define SERIAL_IGNORE 




#endif