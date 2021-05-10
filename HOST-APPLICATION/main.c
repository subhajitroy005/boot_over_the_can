/*
* Main Application
* Read the hex file and have a flow control with the programmer. 
*/
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include "./utility/utility_support.h"

/* Variable Declaraation ___________________________________________________________*/
uint8_t temp[100];
uint32_t i = 0;
uint16_t data;
char ch;
char line_buffer[200] = {};
uint32_t line_buff_index = 0;
//--------------- Individual data filed buffer _
#define REC_LENGTH_START_INDEX 0
#define REC_LENGTH_LENGTH 2
char rec_lengh[2] = {}; // Record length

#define ADDR_START_INDEX 2
#define ADDR_LENGTH 4
char addr[4] = {};

#define REC_TYPE_START_INDEX 6
#define REC_TYPE_LENGTH 2
char rec_type[2] = {};


char data_filed[100] = {};
char check_sum[2] = {};


/* Function Prototype ______________________________________________________________*/
void each_hex_line_operation(char * data);

/* MAIN ____________________________________________________________________________*/
int main()
{
        FILE* hex_file_ptr;

        hex_file_ptr = fopen("./abc.hex" ,"r");
        if (hex_file_ptr == NULL){ 
                printf( "FILE OPEN FAIL\n\r"); 
        } else { 
                printf("FILE OPEN SUCCESS\n\r");
        }
        /* Keep the cursor at the beging of the file*/
        //fscanf(hex_file_ptr  , "%c" , &ch); 
        ch = getc(hex_file_ptr);
        while(ch != EOF){
                //printf("%c",ch);

                if(ch == '\n'){ // One line is completed perform the sting related operation
                        each_hex_line_operation(line_buffer);  
                } else if(ch == ':'){ // Strat of the line clear all the sting and variables and alos the :
                        memset(rec_lengh , 0 , 2);
                        memset(addr , 0 , 4);
                        memset(rec_type , 0 , 2);
                        memset(data_filed , 0, 100);
                        memset(check_sum , 0, 2);
                        memset(line_buffer , 0 , 200);
                        line_buff_index = 0;
                } else { // Put data in string
                        line_buffer[line_buff_index++] = ch;
                }
                ch = getc(hex_file_ptr);
        }

        fclose(hex_file_ptr);

        while(1){
                
        }
        return 0;
}
/* Function definition _____________________________________________________________*/
void each_hex_line_operation(char * data)
{
        /*Record length extract */
        for(int i = REC_LENGTH_START_INDEX , j = 0 ; i< (REC_LENGTH_START_INDEX + REC_LENGTH_LENGTH) ; i++ , j++){
                 rec_lengh[j] = data[i];
        }     
        int data_length = hexadecimalToDecimal(rec_lengh); // data bytes length
        
        /* Adress extraction */
        for(int i = ADDR_START_INDEX , j = 0 ; i<(ADDR_START_INDEX + ADDR_LENGTH) ; i++ , j++){
                 addr[j] = data[i];
        }

        /* Record type extraciton */

        for(int i = REC_TYPE_START_INDEX , j = 0 ; i<(REC_TYPE_START_INDEX + REC_TYPE_LENGTH) ; i++ , j++){
                 rec_type[j] = data[i];
        }
        int record_type = hexadecimalToDecimal(rec_type); // Recod type

        for(int i = REC_TYPE_START_INDEX , j = 0 ; i<(REC_TYPE_START_INDEX + REC_TYPE_LENGTH) ; i++ , j++){
                 rec_type[j] = data[i];
        }

        
        







        printf("%d--\n",record_type);
}
  
