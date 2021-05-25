#ifndef _FILE_HANDLING_SUPPORT_H_
#define _FILE_HANDLING_SUPPORT_H_

#include <config.h>
#include <data_type_support.h>



/**
 * \brief Oen a file and get the file pointer.
 *
 * \param[char* file_name]: String contains the relative path,
 *                               and name of file.
 */
FILE* open_file(char* file_name);


/**
 * \brief Close a file
 *
 * \param[FILE* hex_file_ptr)]:Pointer to file.
 */
void close_file(FILE* hex_file_ptr);






#endif