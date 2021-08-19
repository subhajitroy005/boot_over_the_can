/*
* Main Application
* Read the hex file and have a flow control with the programmer. 
*/

#include <utility_support.h>
#include <file_handling_support.h>
#include <can_driver.h> // For can related support
#include <time_drv_linux.h>
#include <config.h>
#include <data_type_support.h>
#include <queue.h>

/* Variable Declaraation ___________________________________________________________*/
can_context_type can_rw; // operation for CAN [Api supprt]
queue hex_line_q; // Queu operation for hex file lines
type_machine_state app; // Hold data for machine states
uint8_t data_transfter_method = CAN;


clock_t process_save_time;





//--------------- Individual data filed buffer _
char *portname = "/dev/ttyACM0";
char* global_hex_file_name = "abc.hex";


// MCU parametres
int mcu_pagesize = 0;






/* Function Prototype ______________________________________________________________*/
void each_hex_line_operation(char * data);
void read_file_to_queue(char * file_name , queue* q);



/* MAIN ____________________________________________________________________________*/
int main()
{       
        can_rw.can_serial_port = portname;
        
        
        
        
        app.state = INIT;
        while(1){
                switch(app.state){ //State machine data
                        
                        /* INIT state : Initialize all the driver and otehr stuffs*/
                        case INIT: //**************************************************************************
                                /*Init the can comm through the serial*/
                                can_init(&can_rw);
                                /*_______ Line Queue section init ____*/
                                queue_init(&hex_line_q);

                                app.state = READ_FILE;
                        break;
                
                        case READ_FILE: //**************************************************************************
                                /* Read the hex file and put the data to queue line bt line*/
                                read_file_to_queue(global_hex_file_name , &hex_line_q); // Read all the file 

                                app.state = ASK_PAGE_SIZE;
                        break;

                        case ASK_PAGE_SIZE: //**************************************************************************
                                can_rw.can_id = 1; //CAN_ASK_PAGE_SIZE;
                                can_rw.can_data[0] = 1;
                                can_rw.len = 1;
                                can_write(&can_rw);
                                printf("Pagesize Asked------------!\n\r");
                                app.state = READ_SERIAL_CAN_DATA;
                        break;

                        

                        case DECODE_CAN_DATA: //**************************************************************************
                                printf("CAN Message ID received: %x\n\r",can_rw.can_id);
                                switch(can_rw.can_id){
                                       case CAN_ASK_PAGE_SIZE: // Page reply get
                                                if(can_rw.can_data[0] != 0){ // page size received
                                                        mcu_pagesize = can_rw.can_data[0];
                                                        printf("MCU Page Size: %d\n\r",mcu_pagesize);
                                                        app.state = ERROR;
                                                } else {
                                                        printf("CAN: Pazesize asked err in data!\n\r");
                                                        app.state = ERROR;
                                                }
                                       break;

                                       default:
                                                printf("CAN Message ID Not listed!\n\r");
                                                app.state = ERROR;
                                       break;
                               }
                        break;


                        case FLASH_WRITE: //**************************************************************************

                        break;
                
                        
                
                        case READ_SERIAL_CAN_DATA: //**************************************************************************
                               can_read(&can_rw); //  Read the data from serial
                               app.state = DECODE_CAN_DATA;
                        break;
                
                        case ERROR: //**************************************************************************
                                printf("\n\r\n\rError at state Execution! Abort !\n\r");
                                goto out_from_loop;
                        break;
                }
        }

        out_from_loop:

        //printf("TimeOut Occurs! No response from Host programmer\n\r");
        printf("\n\r****************    Program Exit!      ************\n\r");
        return 0;
}



/* Function definition _____________________________________________________________*/
void read_file_to_queue(char * file_name , queue* q)
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
                        //each_hex_line_operation(line_buffer);
                        push(q , line_buffer); // Push line data to queue
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
  
