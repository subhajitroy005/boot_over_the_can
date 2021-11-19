/*
 * config.h
 *
 * Created: 12-11-2021 19:39:46
 *  Author: subhajitr
 */ 


#ifndef CONFIG_H_
#define CONFIG_H_

/* Macro definitions */
#define CAN_MODE 1
#define USB_MODE 0





/* Boot mode configuration */
#define MAX_FLASH_PAGE_SIZE_IN_BYTE     128
#define APP_START_BASE_ADDRESS          (0xE000)	//start app from 0xE000
#define BOOT_LOADER_TIMEOUT		2000		// mS
#define BOOT_MODE			CAN_MODE	// Select the boot mode | Boot over USB or CAN



//*******************  Configuration of bootloader ********************
#define MAX_INCOMMING_STRING_LENGTH  100










#endif /* CONFIG_H_ */