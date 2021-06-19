/*
* Main Application
* Read the hex file and have a flow control with the programmer. 
*/

#include <utility_support.h>
#include <file_handling_support.h>
#include <can_driver.h> // For can related support
#include <config.h>
#include <data_type_support.h>
#include <queue.h>

/* Variable Declaraation ___________________________________________________________*/
char *portname = "/dev/ttyUSB0";
char* global_hex_file_name = "abc.hex";
can_context_type can_rw;
queue hex_line_q;
FILE* hex_file_ptr;

uint8_t temp[100];
uint32_t i = 0;
uint16_t data;


//--------------- Individual data filed buffer _




/* Function Prototype ______________________________________________________________*/
void each_hex_line_operation(char * data);
void read_file_to_queue(char * file_name);



/* MAIN ____________________________________________________________________________*/
int main()
{
        can_rw.can_serial_port = portname;
        can_init(&can_rw);
        /*_______ Line Queue section init ____*/
        queue_init(&hex_line_q);
        /* Read the hex file and put the data to queue line bt line*/
        read_file_to_queue(global_hex_file_name); // Read all the file 
        
        clock_t save_time = 1*CLOCKS_PER_SEC + clock();
        printf("%ld\n",CLOCKS_PER_SEC);
        printf("%ld\n",clock());
        while(save_time > clock());
        printf("%ld\n",clock());


        






        




        
        

        // while(1){
                
         //}
        return 0;
}



/* Function definition _____________________________________________________________*/
void read_file_to_queue(char * file_name)
{       
        /*Operational Local variables*/
        char ch;
        char line_buffer[200] = {};
        uint32_t line_buff_index = 0;

         FILE* file_ptr = open_file(file_name);
        
        /* Keep the cursor at the beging of the file*/
        //fscanf(hex_file_ptr  , "%c" , &ch); 
        ch = getc(file_ptr);
        while(ch != EOF){
                //printf("%c",ch);

                if(ch == '\n'){ // One line is completed perform the sting related operation
                        each_hex_line_operation(line_buffer);  
                } else if(ch == ':'){ // Strat of the line clear all the sting and variables and alos the :
                        memset(line_buffer , 0 , 200);
                        line_buff_index = 0;
                } else { // Put data in string
                        line_buffer[line_buff_index++] = ch;
                }
                ch = getc(file_ptr);
        }
        
        printf("Reading HEX File: Complete!\n\r");
        close_file(file_ptr);
        printf("HEX File Closed\n\r");
}

void each_hex_line_operation(char * data)
{       
        char rec_lengh[2] = {}; // Record length
        char addr[4] = {};
        char rec_type[2] = {};
        char data_filed[100] = {};
        char check_sum[2] = {};
        //printf("%s\n\r",data);


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
}
  
