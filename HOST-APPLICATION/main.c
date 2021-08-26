/*
* Main Application
* Read the hex file and have a flow control with the programmer. 
*/
#include <utility_support.h>
#include <file_handling_support.h>
#include <can_driver.h>  // For can related support
#include <can_message_id.h>
#include <time_drv_linux.h>
#include <config.h>
#include <data_type_support.h>
#include <queue.h>

/* Variable Declaraation ___________________________________________________________*/
int                     i;                      // Global index purpose                                          
type_machine_state      app;                    // Hold data for machine states
can_context_type        can_rw;                 // operation for CAN [Api supprt]
queue                   hex_line_q;             // Queu operation for hex file lines
flash_wr_info_type      flash_wr_info;          // Flash write operation structure
each_hex_line_info_type each_hex_line_buff;     // Hold the info from each hex line decode




//--------------- Individual data filed buffer _
char *portname = "/dev/ttyACM0";
char* global_hex_file_name = "blink.hex";












// MCU parametres
int mcu_pagesize = 0;






/* Function Prototype ______________________________________________________________*/
void each_hex_line_operation(each_hex_line_info_type * each_hex_line_buff);
void read_file_to_queue(char * file_name , queue* q);
void decode_incomming_can_data(const can_context_type * can ,type_machine_state * app);


/* MAIN ____________________________________________________________________________*/
int main()
{       
        can_rw.can_serial_port = portname;

        flash_wr_info.byte_seq_counter = 0;
        flash_wr_info.byte_track_in_line = 0; 
        flash_wr_info.wr_success_page_counter = 0;
        flash_wr_info.mcu_data_accept_ready = 0;
        flash_wr_info.first_time_data_sent = 0;
        flash_wr_info.first_time_data_read = 1;
        flash_wr_info.write_page_byte_counter = 0;
        flash_wr_info.last_page_sent = 0;





        /*
        * Start the execution from INIT
        */
        app.state = INIT;
        while(1){
                switch(app.state){ //State machine data
                        
                        /*
                        *********************************************************
                        *                       STATE: INIT
                        * 
                        * INIT state : Initialize all the driver and otehr stuffs
                        *********************************************************
                        */
                        case INIT:
                                /*
                                * Init the can communication through the serial
                                */
                                can_init(&can_rw);
                                /*
                                * Each hex file queue initialize
                                */
                                queue_init(&hex_line_q);
                                
                                /*
                                * Print the heading of the application
                                * eg: name and version no
                                */
                                printf("***** Over Ther CAN ******\n\rV 1.0\n\r");

                                // Next state
                                app.state = READ_FILE;
                        break;

                        /*
                        *********************************************************
                        *                       STATE: READ_FILE
                        * 
                        * READ_FILE state : Read all the hex file here and queue
                        * each hex file line without the ':'
                        * eg-> each queue will have string of
                        * 
                        * ll aaaa tt dddddddddddddddddddddddddddddddd cs <- fields
                        * ----------------------------------------------
                        * 10 0000 00 502400203D0300003903000039030000 A4 <- example
                        *********************************************************
                        */
                        case READ_FILE:
                                /* Read the hex file and put the data to queue line bt line*/
                                read_file_to_queue(global_hex_file_name , &hex_line_q); // Read all the file 

                                // Next state
                                app.state = START_BOOT_FLASH_WRITE;
                        break;


                        /*
                        *********************************************************
                        *                       STATE: ASK_PAGE_SIZE
                        * 
                        * ASK_PAGE_SIZE state : If we want to boot the page write
                        *                       will start from ask the page size
                        *                       of MCU.
                        *********************************************************
                        */
                        case START_BOOT_FLASH_WRITE:
                                can_rw.can_id = CAN_START_FLASH_WRITE;
                                can_rw.can_data[0] = CAN_TXN_QUERY; // send a query
                                can_rw.len = 1;
                                can_write(&can_rw);
                                printf("Boot flash write requested !\n\r");

                                // Next state
                                app.state = READ_SERIAL_CAN_DATA;
                        break;
                        
                        /*
                        *********************************************************
                        *                       STATE: READ_SERIAL_CAN_DATA
                        * 
                        * READ_SERIAL_CAN_DATA state : Read in blocking method 
                        *                               for serial (can) data
                        *********************************************************
                        */
                        case READ_SERIAL_CAN_DATA:
                               can_read(&can_rw); //  Read the data from serial || Blocking in this method

                               // Next state
                               app.state = DECODE_CAN_DATA;
                        break;
                        
                        /*
                        *********************************************************
                        *                       STATE: DECODE_CAN_DATA
                        * 
                        * READ_SERIAL_CAN_DATA state : decode the can messgae
                        *                               and execute the next
                        *                               state according to that.
                        *********************************************************
                        */
                        case DECODE_CAN_DATA:
                                decode_incomming_can_data(&can_rw , &app);
                        break;

                        /*
                        *********************************************************
                        *                       STATE: DECODE_HEX_FILE
                        * 
                        * DECODE_HEX_FILE state : Peek one element 
                        *                       [ one hex file line from queue ]
                        *                       and extract the data fields
                        *                       form that line
                        *********************************************************
                        */
                        case DECODE_HEX_FILE:
                                if(queue_size(&hex_line_q) > 0){ // pop the queue until the las element
                                        /* Clear all the prev mem data */
                                        memset(each_hex_line_buff.whole_line_temp_buff, 
                                                0, 
                                                strlen(each_hex_line_buff.whole_line_temp_buff) );
                                        memset(each_hex_line_buff.data, 
                                                0, 
                                                strlen(each_hex_line_buff.data));
                                        memset(each_hex_line_buff.data_start_adress, 
                                                0, 
                                                strlen(each_hex_line_buff.data_start_adress));
                                        
                                        /* Peek a whole line from hex line queue */
                                        peek(&hex_line_q ,each_hex_line_buff.whole_line_temp_buff);

                                        /* Segment each hex line and extract the data from a line */
                                        each_hex_line_operation(&each_hex_line_buff);

                                        /* POP this line after read */ 
                                        pop(&hex_line_q);

                                        // Next state : File read complete so next state is write to flash
                                        app.state =  FLASH_WRITE;
                                } else { // All hex file line adressed file operation done
                                        printf("Nothig in the hex file queue!\n\r");
                                        // Next state
                                        app.state = ERROR;
                                }   
                        break;

                        /*
                        *********************************************************
                        *                       STATE: FLASH_WRITE
                        * 
                        * FLASH_WRITE state : Based on the hex file line
                        *                       send the proper fileds to mcu and
                        *                       [main mcu write control here ]
                        *********************************************************
                        */
                        case FLASH_WRITE:

                        break;
                
                        
                
                        
                        /*
                        *********************************************************
                        *                       STATE: ERROR
                        * 
                        * ERROR state : Execute and exit the program at any error
                        *********************************************************
                        */
                        case ERROR:
                                printf("\n\r\n\rState ERROR: Abort !\n\r");
                                goto out_from_loop;
                        break;

                        /*
                        *********************************************************
                        *                       STATE: APP_EXIT
                        * 
                        * APP_EXIT state : After successful execution exit code
                        *********************************************************
                        */
                        case APP_EXIT:
                                printf("_-_-_-_-_-_-_ FLASH write successful -_-_-_-_-_-_-_\n\r");
                               goto out_from_loop; 
                        break;
                        
                        /*
                        *********************************************************
                        *                       STATE: default
                        * 
                        * default state : If and state assignment problem happen
                        *********************************************************
                        */
                        default:
                                printf("Error!! Default state executed!\n\r");
                                goto out_from_loop;
                        break;
                }
        }

        out_from_loop:
        printf("\n\r****************    Program Exit!      ************\n\r");
        return 0;
}

/*
################################################
* Function:             decode_incomming_can_data
* Operation:
* params:
* return:
################################################
*/
void decode_incomming_can_data(const can_context_type * can ,type_machine_state * app)
{
        switch(can->can_id){
                /*
                * If it is a reply of boot flash write
                */
                case CAN_START_FLASH_WRITE:
                     printf("hlelo");   
                break;

                default:
                        printf("ERROR: CAN Message ID Not listed!%x\n\r",can->can_id);
                        app->state = ERROR;
                break;
        }
}

/*
################################################
* Function:             read_file_to_queue
* Operation:
* params:
* return:
################################################
*/
void read_file_to_queue(char * file_name , queue * q)
{       
        /*Operational Local variables*/
        char ch;
        char line_buffer[200] = {};
        uint32_t line_buff_index = 0;
        FILE* file_ptr = open_file(file_name);
        
        /* Keep the cursor at the beging of the file*/
        ch = getc(file_ptr);
        while(ch != EOF){
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
        close_file(file_ptr);
        printf("%s: Reading Completed!\n\r" , file_name);
}

/*
################################################
* Function:             each_hex_line_operation
* Operation:
* params:
* return:
################################################
*/
void each_hex_line_operation(each_hex_line_info_type * each_hex_line_buff)
{       
        /* All temp variables for data conversion */
        uint8_t temp_rec_length[2] = {};
        uint8_t temp_address[4] = {};
        uint8_t rec_type[2] = {};
        uint8_t check_sum[2] = {};


        /*Record length extraction */
        for(int i = REC_LENGTH_START_INDEX , j = 0 ; i< (REC_LENGTH_START_INDEX + REC_LENGTH_LENGTH) ; i++ , j++){
                 temp_rec_length[j] = each_hex_line_buff->whole_line_temp_buff[i];
        }     
        each_hex_line_buff->data_len = hexadecimalToDecimal(temp_rec_length); // data bytes length

        /* Adress extraction */
        for(int i = ADDR_START_INDEX , j = 0 ; i<(ADDR_START_INDEX + ADDR_LENGTH) ; i++ , j++){
                 temp_address[j] = each_hex_line_buff->whole_line_temp_buff[i];
        }
        each_hex_line_buff->data_start_adress = hexadecimalToDecimal(temp_address); // data bytes length

        /* Record type extraciton */
        for(int i = REC_TYPE_START_INDEX , j = 0 ; i<(REC_TYPE_START_INDEX + REC_TYPE_LENGTH) ; i++ , j++){
                 rec_type[j] = each_hex_line_buff->whole_line_temp_buff[i];
        }
        each_hex_line_buff->data_type = hexadecimalToDecimal(rec_type); // Recod type

        /* 
                Data field extraction
                one byte data meand 2 hex ascii character from line
        */
        for(int i = DATA_START_INDEX , j = 0 ; i < ( DATA_START_INDEX + ( (each_hex_line_buff->data_len) * 2) ) ; i++ , j++){
                each_hex_line_buff->data[j] = each_hex_line_buff->whole_line_temp_buff[i];
        }

        #if EACH_HEX_FILE_LINE_DECOMPOSE_PRINT
                printf("--------------- Debug: Hex line decompose -----------");
                printf("Current HEX Line ::%s\n\r", each_hex_line_buff->whole_line_temp_buff);
                printf("Record length: %s ::%d\n\r", temp_rec_length , each_hex_line_buff->data_len);
                printf("Line Address ::%s ::%x\n\r", temp_address , each_hex_line_buff->data_start_adress);
                printf("Type ::%s ::%d\n\r", rec_type , each_hex_line_buff->data_type);
                printf("Flash data ::%s\n\r", each_hex_line_buff->data);
                printf("-----------------------------------------------------\n\r");
        #endif
}
  
