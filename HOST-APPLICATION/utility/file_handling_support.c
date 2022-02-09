#include "file_handling_support.h"
/*
* File handling Local Variables
*/



FILE* open_file(char* file_name)
{
        FILE* hex_file_ptr = fopen(file_name ,"r");
        if (hex_file_ptr == NULL){ 
                printf("[ FILE DRV ][ ERR ] File open failed ...!\n");
                exit(EXIT_FAILURE); 
        } else { 
                return hex_file_ptr;
        }
}

void close_file(FILE* hex_file_ptr)
{
        fclose(hex_file_ptr);
}






