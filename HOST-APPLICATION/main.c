/*
Host PC  Application --------------------------------------------------
Main JOB of this application is to read the HEX file, segment it, send
the contents to the target bootloader.


MIT License

Copyright (c) 2020-2026 Subhajit Roy

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
#include <utility_support.h>                    // Utility
#include <queue.h>                              // For queue utility
#include <file_handling_support.h>              // Driver
#include <can_driver.h>                         // Driver
#include <can_message_id.h>                     // Driver -> CAN message ID's defined
/*! This time driver not using right now . Its for time out purpose */
#if LINUX // From the compiler defined symbols {for linux inclusion}
#include <time_drv_linux.h>                     // Time driver           
#endif
#if WINDOWS // From the compiler defined symbols {for windows inclusion}
#include <time_drv_windows.h>
#include <Windows.h>    
#endif
#include <config.h>                             // Global Configuration
#include <data_type_support.h>                  // Global debug flags


/* Variable Declaraation ___________________________________________________________*/
int                     i;                      // Global index purpose                                          
type_machine_state      app;                    // Hold data for machine states
can_context_type        can_rw;                 // operation for CAN [Api supprt]
queue                   hex_line_q;             // Queu operation for hex file lines
flash_wr_info_type      flash_wr_info;          // Flash write operation structure
each_hex_line_info_type each_hex_line_buff;     // Hold the info from each hex line decode

union bit_to_arr{
	uint8_t byte_arr[4];
	uint32_t bit32_data;	
}bit_to_arr_conv;


//--------------- Individual data filed buffer  -------------------------
char * temp_arg_arr;
char *portname;              
char *global_hex_file_name;

int reset_req_flag              = 1;
int reset_message_id            = 0;                                    // Message ID for sw reset the board which we need to upload the code.
int reset_ack_id                = 0;
int number_of_fail_retry        = 0;                                    // fail retry number
int max_number_retry            = MAX_FAILED_UPLOAD_RETRY;              // Default retry value 3

// MCU parametres
int mcu_pagesize                = 0;






/* Function Prototype ______________________________________________________________*/
void each_hex_line_operation(each_hex_line_info_type * each_hex_line_buff);
void read_file_to_queue(char * file_name , queue* q);
void decode_incomming_can_data(can_context_type * can ,type_machine_state * app);


/* MAIN ____________________________________________________________________________*/
int main(int argc, char *argv[])
{       
        if(argc ==1){ // No arguments passed
                printf("\n\nOver Ther CAN [ Version 1.10 ]\n");
                printf("\tPlease provide necessary parameters!\n\t-h for help!\n");
                goto out_from_loop;
        }
        /* Handling the command line arguments */
        for(int i = 1 ; i <= (argc - 1) ; i+=2 ){
                
                temp_arg_arr = argv[i];
               
                switch(temp_arg_arr[1]){
                        case 'p': // set the com port
                               portname = argv[i+1];
                        break;

                        case 'w': // Hex file name
                                global_hex_file_name = argv[i+1];
                        break;

                        case 'r': // Node CAN reset req en
                                reset_req_flag = atoi(argv[i+1]);
                        break;

                        case 'm': // Reet message ID
                             reset_message_id =  atoi(argv[i+1]);  
                        break;

                        case 'a': // Ack messgae ID
                                reset_ack_id = atoi(argv[i+1]);
                        break;

                        case 't': // Number of failed retry
                                max_number_retry = atoi(argv[i+1]);
                        break;

                        case 'h': // Help
                                printf("\nOver the can firmware Upload\n");
                                printf("otc [<command> <value>]\n");
                                printf("\t-p\tCAN interface serial port.\n");
                                printf("\t-w\tCAN Hex file name [ This should be in the same directory of otc].\n");
                                printf("\t-r\tReset the mode via CAN message [0]-> disable [1]-> enable.\n");
                                printf("\t-m\tIf the reset req is enabled then the reset req message id in decimal value.\n");
                                printf("\t-a\tIf the reset req is enabled then the reset req ack message id in decimal value.\n");
                                printf("\t-t\tIf firmware upload failed at any point then how many times retry.\n");
                                goto out_from_loop;
                        break;
                        break;

                        default:
                                printf("\t-%c command not found!\n\t-h for help!\n",temp_arg_arr[1]);
                                goto out_from_loop;
                        break;

               }
               
        }
        

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
                                * Print the heading of the application
                                * eg: name and version no
                                */
                                printf("\n\nOver Ther CAN [ Version 1.10 ]\n");
                                printf("Support @ subhajtroy005@gmail.com\n\n");

                                /* 
                                * Check for some mandatory values 
                                */
                                if(portname == NULL){
                                        printf("\t[ ERR ] Serial COM port [CAN converter interface ] not selected !\n");
                                        goto out_from_loop;
                                } else {
                                        printf("\tCAN interface COM [%s]\n",portname);
                                        can_rw.can_serial_port = portname;
                                }

                                if(global_hex_file_name == NULL){
                                        printf("\t[ ERR ] HEX file not selected !\n");
                                        goto out_from_loop;
                                } else {
                                        printf("\tHEX file [%s]\n",global_hex_file_name);
                                }

                                if(reset_req_flag){ // if reset req is enabled
                                        if(reset_message_id == 0){
                                                printf("\t[ ERR ] Reset req message id not defined !\n");
                                                goto out_from_loop;
                                        } else {
                                                printf("\tReset req CAN ID [0x%x] !\n",reset_message_id);
                                        }

                                        if(reset_ack_id == 0 ){
                                                printf("\t[ ERR ] Reset ack message id not defined !\n");
                                                goto out_from_loop;
                                        } else {
                                                printf("\tReset ack CAN ID [0x%x] !\n",reset_ack_id);
                                        }
                                } else {
                                        printf("\tReset Req skipped!\n");
                                }
                                /*
                                * Init the can communication through the serial
                                */
                                can_init(&can_rw);
                                /*
                                * Each hex file queue initialize
                                */
                                queue_init(&hex_line_q);
                                

                                /* variable default */
                                flash_wr_info.curr_hex_line_adress = 0;
                                flash_wr_info.curr_mcu_mem_addr = 0;
                                each_hex_line_buff.line_count = 0;
                                flash_wr_info.sent_page_byte_counter=0;
                                flash_wr_info.page_byte_seq = 0;
                                flash_wr_info.packet_byte_counter = 0;
                                each_hex_line_buff.total_line_count = 0;


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
                                /* 
                                * if there are error that mean this is first time then send reset
                                * Else start the flash writing from beginig 
                                */ 
                                if(number_of_fail_retry == 0)
                                        if(reset_req_flag) // if the reset rew is enabled
                                                app.state = SEND_RESET;
                                        else
                                                app.state = START_BOOT_FLASH_WRITE;  
                                else{
                                        /* retries */
                                        printf("[ OK ] Startig flash writing sequence ! Retry [%d]",number_of_fail_retry);
                                        app.state = START_BOOT_FLASH_WRITE;
                                }
                                        
                        break;


                        /*
                        *********************************************************
                        *                       STATE: SEND_RESET
                        * 
                        * ASK_PAGE_SIZE state : Send reset request to the node,
                        *                       so that it can go to the boot
                        *                       loader mode.
                        *********************************************************
                        */
                        case SEND_RESET:
                                /* Send sw reset */
                                printf("[ CAN ---> ] Node reset message sent!\n");
                                can_rw.can_id = reset_message_id;
                                can_rw.can_data[0] = CAN_TXN_QUERY; // send a query
                                can_rw.len = 1;
                                can_write(&can_rw);
                                /* Sleep 1 sec fo go to booloader mode */
                                
                                app.state = READ_SERIAL_CAN_DATA;
                                
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
                                sleep(1);
                                /* Start uploading bootloader */
                                can_rw.can_id = CAN_START_FLASH_WRITE;
                                can_rw.can_data[0] = CAN_TXN_QUERY; // send a query
                                can_rw.len = 1;
                                can_write(&can_rw);
                                printf("[ CAN ---> ] Boot flash write requested !\n");

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

                                        /* Clear the temp buffer */
                                        memset(each_hex_line_buff.whole_line_temp_buff , 0 , 200);;
                                        /* Peek a whole line from hex line queue */
                                        peek(&hex_line_q , each_hex_line_buff.whole_line_temp_buff);
                                        
                                        /* Update the line cout */
                                        each_hex_line_buff.line_count++;
                                        
                                        /* Segment each hex line and extract the data from a line */
                                        each_hex_line_operation(&each_hex_line_buff);

                                        /* POP this line after read */ 
                                        pop(&hex_line_q);
                                        
                                        /* 
                                                Reset counters for send this line sequences
                                                On each line the write sequence will be reseted until last EOL
                                        */
                                        flash_wr_info.sent_page_byte_counter = 0;
                                        flash_wr_info.page_byte_seq = 0;
                                        flash_wr_info.page_byte_seq = 0;
                                        // Next state : File read complete so next state is write to flash
                                        app.state =  FLASH_WRITE;
                                } else { // All hex file line adressed file operation done
                                        printf("[ CRITICAL ERR ] Nothig in the hex file queue!\n\r");
                                        // Next state
                                        goto out_from_loop;
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
                                switch(each_hex_line_buff.data_type){ // Based on the line type switch to send positions
                                        case 0: // Data bytes in the line
                                                if(flash_wr_info.sent_page_byte_counter < each_hex_line_buff.data_len){ // Send bytes

                                                        /* Caution : Not handling the max page bytes as the hex file did that */
                                                        can_rw.can_id = CAN_SEND_FLASH_DATA;
                                                        /* byte 0 is the packet seq */
                                                        can_rw.can_data[0] = flash_wr_info.page_byte_seq;

                                                        /* Assigning bytes form the packet fomr byte 2 */
                                                        int i, j; // i index the can data byte j track the number of bytes in a packet
                                                        for( i =2 ,j = 0; (j< MAX_BYTE_IN_CAN_PACKET) && (flash_wr_info.sent_page_byte_counter < each_hex_line_buff.data_len) ; i++ , j++,  flash_wr_info.sent_page_byte_counter++){
                                                                can_rw.can_data[i] =  each_hex_line_buff.data[flash_wr_info.sent_page_byte_counter];
                                                                //printf("%d\n",flash_wr_info.sent_page_byte_counter);        
                                                        }
                                                        /* byte 1 is the number of bytes */
                                                        can_rw.can_data[1] = j;
                                                        /*2 byte fixed and rest are data bytes */
                                                        can_rw.len = j+2;
                                                        can_write(&can_rw);
                                                        //printf("P data sent!\n");
                                                        printf(">");

                                                        /* Next state is to see the ack of this bye so can read  */
                                                        app.state = READ_SERIAL_CAN_DATA;
                                                } else { // One line data send so request to write in MCU pages
                                                        printf("[EOL %d]",each_hex_line_buff.line_count);

                                                        /* One line complete so write the data in MCU page req */
                                                        can_rw.can_id = CAN_SEND_PAGE_COMPLETE;
                                                        can_rw.can_data[0] = 1;
                                                        can_rw.len =1;
                                                        can_write(&can_rw);

                                                        /* Read the MCU page write ack */
                                                        app.state = READ_SERIAL_CAN_DATA;
                                                }
                                        break;

                                        case 1: // End of file and hex file is done and send jump to app
                                                can_rw.can_id = CAN_SEND_JUMP_TO_APP;
                                                can_rw.can_data[0] = 1;
                                                can_rw.len =1;
                                                can_write(&can_rw);
                                                /* Next state read the ack */
                                                app.state = READ_SERIAL_CAN_DATA;   
                                        break;

                                        case 2: // Extended seg adress
                                                /* Send extended segment address */
                                                can_rw.can_id = CAN_SEND_EXT_SEG_ADDR;
		                                can_rw.can_data[0] =  each_hex_line_buff.data[0];
		                                can_rw.can_data[1] =  each_hex_line_buff.data[1];
                                                printf("[ CAN ---> ] EXT segment adress sent [0x %x-%x]\n",each_hex_line_buff.data[0],each_hex_line_buff.data[1]);
                                                can_rw.len =2;
                                                can_write(&can_rw);
                                                
                                                /* Next state read the ack */

                                                app.state = READ_SERIAL_CAN_DATA;
                                        break;

                                        case 3: // Start segment adress
                                                can_rw.can_id = CAN_SEND_JUMP_TO_APP;
                                                can_rw.can_data[0] = 1;
                                                can_rw.len =1;
                                                can_write(&can_rw);
                                                /* Next state read the ack */
                                                app.state = READ_SERIAL_CAN_DATA;
                                        break;

                                        case 4: // Extended linear adress
                                        break;

                                        case 5: // Start linear adress
                                        break;
                                        
                                        default: // Record type not found
                                                printf("[ CRITICAL ERR ] HEX file Record type not found!\n");
                                                goto out_from_loop;
                                        break;


                                }
                        break;
                
                        
                
                        
                        /*
                        *********************************************************
                        *                       STATE: ERROR
                        * 
                        * ERROR state : Execute and exit the program at any error
                        *********************************************************
                        */
                        case ERROR:
                                /* Check for number of retries and if is less t
                                 * than or equal to permitable range then start 
                                 * from beginig else abort 
                                 */
                                if(number_of_fail_retry <= max_number_retry){
                                        /* Flush the queue */
                                        printf("[ ERR ] Firmware upload failed! Retrying........");

                                        /* Flush the hex line queue so that the program start from beging */
                                        while(queue_size(&hex_line_q) != 0){
                                                pop(&hex_line_q);
                                        }

                                        /* reset the variables */
                                        flash_wr_info.curr_hex_line_adress = 0;
                                        flash_wr_info.curr_mcu_mem_addr = 0;
                                        each_hex_line_buff.line_count = 0;
                                        flash_wr_info.sent_page_byte_counter=0;
                                        flash_wr_info.page_byte_seq = 0;
                                        flash_wr_info.packet_byte_counter = 0;
                                        each_hex_line_buff.total_line_count = 0;

                                        number_of_fail_retry++; // increment the retry

                                        /* Start from the hex line queue */
                                        app.state = READ_FILE;

                                } else {
                                        printf("[ ERROR ] Maximum retry limit exceeded ! Upload failed\n");
                                        printf("****************\n Application maynot work properly!\n");
                                        printf(" 1. Reset the node as fixed bootloader mode !\n");
                                        printf(" 2. run the programmer as -r0 [ no reset req ] !\n");
                                        printf("****************\n");
                                        goto out_from_loop;
                                }
                                
                        break;

                        /*
                        *********************************************************
                        *                       STATE: APP_EXIT
                        * 
                        * APP_EXIT state : After successful execution exit code
                        *********************************************************
                        */
                        case APP_EXIT:
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
                                printf("Error!! Default state executed!\n");
                                goto out_from_loop;
                        break;
                }
        }

        out_from_loop:
        can_de_init(&can_rw);
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
void decode_incomming_can_data(can_context_type * can  , type_machine_state * app)
{
        switch(can->can_id){
                /*
                * If it is a reply of boot flash write
                */
                case CAN_START_FLASH_WRITE:
                        flash_wr_info.mcu_page_size = can->can_data[0];
                        printf("[ CAN <--- ][ OK ] Page Size: %d | ",flash_wr_info.mcu_page_size);
                        flash_wr_info.bit32_data = can->can_data[2];
                        flash_wr_info.bit32_data = (flash_wr_info.bit32_data << 8);
                        flash_wr_info.bit32_data &= 0xFF00;
                        flash_wr_info.bit32_data |= can->can_data[1];
                        flash_wr_info.curr_mcu_mem_addr  =  flash_wr_info.bit32_data;
                        printf("MCU Base adress: 0x%x\n",flash_wr_info.curr_mcu_mem_addr);
                        
                        /* Application ack get and based on data next state decide */
                        if(flash_wr_info.mcu_page_size !=0 ){
                                // If success then read the hex file and further process
                                app->state = DECODE_HEX_FILE;
                        } else {
                                printf("[ CAN <--- ][ ERR ] MCU page size get 0\n"); 
                                 app->state = ERROR;
                        }
                                
                break;
                
                /*
                        After sending a data byte packet this is ack
                */
                case CAN_SEND_FLASH_DATA:
                        /*      Check the sequence what we sent [ increment before so + 1 ] 
                                is what received by the MCU 
                        */
                        if(flash_wr_info.page_byte_seq == can->can_data[0]){
                                flash_wr_info.page_byte_seq++; // increment the sequence for the next packet
                                /* Write other bytes */
                                app->state = FLASH_WRITE;
                                printf("*"); 
                        } else {
                                printf("\n[ CAN <--- ][ ERR ] MCU data packet seq mismatch\n");
                                app->state = ERROR;
                        }
                break;

                case CAN_SEND_PAGE_COMPLETE:
                        /* Page write ack from MCU */
                        if(can->can_data[0]) { // page write successful so decode next line and send
                                /* MCU send infomations */
                                printf("\t| MCU written Bytes %d : ",can->can_data[1]);// number of bytes written
                                bit_to_arr_conv.byte_arr[0] = can->can_data[2];
                                bit_to_arr_conv.byte_arr[1] = can->can_data[3];
                                bit_to_arr_conv.byte_arr[2] = can->can_data[4];
                                bit_to_arr_conv.byte_arr[3] = can->can_data[5];
                                 flash_wr_info.curr_mcu_mem_addr =  bit_to_arr_conv.bit32_data;
                                printf("Address: 0x%x   ",flash_wr_info.curr_mcu_mem_addr);
                                /* Line percentage calculation */
                                float complete_percent = (float)((each_hex_line_buff.line_count / (float)each_hex_line_buff.total_line_count) * 100.f); 
                                printf("[%.2f %c]\n", complete_percent, '%');
                                app->state = DECODE_HEX_FILE;

                        } else {
                                printf("\n[ CAN <--- ][ ERR ] MCU page write failed !\n");
                                app->state = ERROR; 
                        }
                break;

                case CAN_SEND_EXT_SEG_ADDR:
                       
                        bit_to_arr_conv.byte_arr[0] = can->can_data[0];
                        bit_to_arr_conv.byte_arr[1] = can->can_data[1];
                        bit_to_arr_conv.byte_arr[2] = can->can_data[2];
                        bit_to_arr_conv.byte_arr[3] = can->can_data[3];

                        //temp_32bit_data = ( ((can->can_data[3]<<24) & 0xFF000000) | ((can->can_data[2]<<16) & 0xFF0000) | ((can->can_data[1]<<8) & 0xFF00) | (can->can_data[0] & 0xFF) );
                        flash_wr_info.curr_mcu_mem_addr =  bit_to_arr_conv.bit32_data;

                        printf("[ CAN <--- ][ OK ] MCU Extended segment adress ACK  [0x%x]\n", flash_wr_info.curr_mcu_mem_addr);
                        /* next state decode hex file */
                        app->state = DECODE_HEX_FILE;
                break;



                case CAN_SEND_JUMP_TO_APP:
                        if(can->can_data[0]){
                                printf("[ CAN <--- ][ OK ] Upload Completed....! Jump to application....\n");
                                app->state = APP_EXIT;
                        } else {
                                printf("[ CAN <--- ][ ERR ] APP start neg ack\n");
                                app->state = ERROR;
                        }
                break;

                case CAN_SENT_FLASH_WRITE_ERROR: // flash write error in mcu
                        printf("[ CAN <--- ][ ERR ] MCU ERROR ACK! \n");
                        app->state = ERROR;
                break;


                default:
                        if(can->can_id == reset_ack_id){ // if it is a reset ack ID
                                app->state = START_BOOT_FLASH_WRITE;          
                        } else {
                                app->state = READ_SERIAL_CAN_DATA;
                        }
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
                        each_hex_line_buff.total_line_count++;
                } else if(ch == ':'){ // Strat of the line clear all the sting and variables and alos the :
                        memset(line_buffer , 0 , 200);
                        line_buff_index = 0;
                } else { // Put data in string
                        line_buffer[line_buff_index++] = ch;
                }
                ch = getc(file_ptr);
        } 

        each_hex_line_buff.total_line_count= each_hex_line_buff.total_line_count - 1; // One minus for the last line as eol
        close_file(file_ptr);
        printf("[ OK ] %s Reading Completed ! Total Line %d\n" , file_name , each_hex_line_buff.total_line_count);
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

        #if EACH_HEX_FILE_LINE_DECOMPOSE_PRINT
        printf("--------------- Hex line [ %d ] decompose -----------\n", each_hex_line_buff->line_count );
        printf("Current HEX Line :%s:\n", each_hex_line_buff->whole_line_temp_buff);
        #endif

        /* All temp variables for data conversion */
        memset(each_hex_line_buff->temp_rec_length, 0 , 2);
        memset(each_hex_line_buff->temp_address, 0 , 4);
        memset(each_hex_line_buff->rec_type, 0 , 2);
        memset(each_hex_line_buff->data_conv_buff, 0 , 2);
        /*Record length extraction */
        for(int i = REC_LENGTH_START_INDEX , j = 0 ; i< (REC_LENGTH_START_INDEX + REC_LENGTH_LENGTH) ; i++ , j++){
                each_hex_line_buff->temp_rec_length[j] = each_hex_line_buff->whole_line_temp_buff[i];
        }     
        each_hex_line_buff->data_len = hexadecimalToDecimal(each_hex_line_buff->temp_rec_length); // data bytes length
        #if EACH_HEX_FILE_LINE_DECOMPOSE_PRINT
        printf("Record length :%s:[%d]\n", each_hex_line_buff->temp_rec_length , each_hex_line_buff->data_len);
        #endif
        
        
        
        
        memset(each_hex_line_buff->temp_rec_length, 0 , 2);
        memset(each_hex_line_buff->temp_address, 0 , 4);
        memset(each_hex_line_buff->rec_type, 0 , 2);
        memset(each_hex_line_buff->data_conv_buff, 0 , 2);
        /* Adress extraction */
        for(int i = ADDR_START_INDEX , j = 0 ; i<(ADDR_START_INDEX + ADDR_LENGTH) ; i++ , j++){
                 each_hex_line_buff->temp_address[j] = each_hex_line_buff->whole_line_temp_buff[i];
        }
        each_hex_line_buff->data_start_adress = hexadecimalToDecimal(each_hex_line_buff->temp_address); // data bytes length
        #if EACH_HEX_FILE_LINE_DECOMPOSE_PRINT
        printf("Line Address :%s: [%x]\n", each_hex_line_buff->temp_address , each_hex_line_buff->data_start_adress);
        #endif


        memset(each_hex_line_buff->temp_rec_length, 0 , 2);
        memset(each_hex_line_buff->temp_address, 0 , 4);
        memset(each_hex_line_buff->rec_type, 0 , 2);
        memset(each_hex_line_buff->data_conv_buff, 0 , 2);
        /* Record type extraciton */
        for(int i = REC_TYPE_START_INDEX , j = 0 ; i<(REC_TYPE_START_INDEX + REC_TYPE_LENGTH) ; i++ , j++){
                 each_hex_line_buff->rec_type[j] = each_hex_line_buff->whole_line_temp_buff[i];
        }
        each_hex_line_buff->data_type = hexadecimalToDecimal(each_hex_line_buff->rec_type); // Recod type
        #if EACH_HEX_FILE_LINE_DECOMPOSE_PRINT
        printf("Type :%s: :%d:\n", each_hex_line_buff->rec_type , each_hex_line_buff->data_type);
        #endif


        memset(each_hex_line_buff->temp_rec_length, 0 , 2);
        memset(each_hex_line_buff->temp_address, 0 , 4);
        memset(each_hex_line_buff->rec_type, 0 , 2);
        memset(each_hex_line_buff->data_conv_buff, 0 , 2);
        /* 
                Data field extraction
                one byte data meand 2 hex ascii character from line
        */
        for(int i = DATA_START_INDEX , j = 0 ; i < ( DATA_START_INDEX + ( (each_hex_line_buff->data_len) * 2) ) ; i+=2 , j++){
                each_hex_line_buff->data_conv_buff[0] = each_hex_line_buff->whole_line_temp_buff[i];
                each_hex_line_buff->data_conv_buff[1] = each_hex_line_buff->whole_line_temp_buff[i+1];
                each_hex_line_buff->data[j] = hexadecimalToDecimal(each_hex_line_buff->data_conv_buff);
        }
        #if EACH_HEX_FILE_LINE_DECOMPOSE_PRINT
        printf("Type :%s: :%d:\n", each_hex_line_buff->rec_type , each_hex_line_buff->data_type);
                 printf("Flash data: ");
                for(int i = 0;  i< each_hex_line_buff->data_len ; i++){
                        printf("-%d[0x%x]-", each_hex_line_buff->data[i] , each_hex_line_buff->data[i]);
                }
                printf("\n");
        printf("-----------------------------------------------------\n");
        #endif
        
}
  
