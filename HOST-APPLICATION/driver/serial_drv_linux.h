#ifndef _SERIAL_DRV_LINUX_H_
#define _SERIAL_DRV_LINUX_H_

#include <data_type_support.h>
#include <config.h>
#include <errno.h>
#include <fcntl.h> 
#include <string.h>
#include <termios.h>
#include <unistd.h>


/**
 * \brief Open and config the serial port
 *
 * \param[char* port_name]: String contains the name of the serial,
 *      port to be open. 
 */
void config_serial_port(char* port_name);

/**
 * \brief Write a string to serial port
 *
 * \param[char* string_data]: String contains the data,
 *      to be written on port. 
 */
void write_serial_string(char* string_data);

/**
 * \brief read a string to serial port
 *
 * \param[uint8_t * buffer]: Pointer to the buffer to be filled [string],
 */
void read_serial_string(uint8_t * buffer);



#endif