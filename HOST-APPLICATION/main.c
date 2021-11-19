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
#include "zen_message_id.h"

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


//--------------- Individual data filed buffer _
//char *portname = "/dev/ttyACM0"; // For linux 
char *portname = "COM6"; // For windows
char* global_hex_file_name = "abc.hex";
int can_node;
int reset_node_id;
int reset_req;










// MCU parametres
int mcu_pagesize = 0;






/* Function Prototype ______________________________________________________________*/
void each_hex_line_operation(each_hex_line_info_type * each_hex_line_buff);
void read_file_to_queue(char * file_name , queue* q);
void decode_incomming_can_data(can_context_type * can ,type_machine_state * app);


/* MAIN ____________________________________________________________________________*/
int main(int argc, char *argv[])
{       
        

        
        portname = argv[1];
        global_hex_file_name = argv[2];
        can_rw.can_serial_port = portname;
        flash_wr_info.curr_hex_line_adress = 0;
        flash_wr_info.curr_mcu_mem_addr = 0;
        can_node = atoi(argv[3]);
        reset_req = atoi(argv[4]);
        printf("NODE Selected: %d\n",can_node);
        /* Reset node ID*/
        switch(can_node){
                case 1:
                        reset_node_id = 0;
                break;
                case 2:
                        reset_node_id = 0x8B;
                break;
                case 3:
                        reset_node_id = 0xC6;
                break;
                case 4:
                        reset_node_id = 0x107;
                break;
                case 5:
                        reset_node_id = 0x14D;
                break;
                case 6:
                        reset_node_id = 0x18D;
                break;
                case 7:
                        reset_node_id = 0x1CD;
                break;
                case 8:
                        reset_node_id = 0x20D;
                break;
                case 9:
                        reset_node_id = 0x24D;
                break;
                case 10:
                        reset_node_id = 0x28D;
                break;
                case 11:
                        reset_node_id = 0x2CD;
                break;
                case 12:
                        reset_node_id = 0x30D;
                break;
                case 13:
                        reset_node_id = 0x34D;
                break;
                case 14:
                        reset_node_id = 0x789;
                break;
                case 15:
                        reset_node_id = 0x7C9;
                break;

                default:
                break;
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
                                printf("-------------------\n");
                                printf("Over Ther CAN V 1.0\n");
                                printf("Support @ subhajtroy005@gmail.com\n");
                                printf("-------------------\n\r");
                                /*
                                * Init the can communication through the serial
                                */
                                can_init(&can_rw);
                                /*
                                * Each hex file queue initialize
                                */
                                queue_init(&hex_line_q);
                                

                                /* variable default */
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
                                if(reset_req)
                                        app.state = SEND_RESET;
                                else 
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
                        case SEND_RESET:
                                /* Send sw reset */
                                printf("Node id [ %d ] Reset Requested !\n",can_node);
                                can_rw.can_id = reset_node_id;
                                can_rw.can_data[0] = CAN_TXN_QUERY; // send a query
                                can_rw.len = 1;
                                can_write(&can_rw);
                                /* Sleep 1 sec fo go to booloader mode */
                                
                                app.state = READ_SERIAL_CAN_DATA;
                                
                        break;

                        case START_BOOT_FLASH_WRITE:
                                sleep(1);
                                /* Start uploading bootloader */
                                can_rw.can_id = CAN_START_FLASH_WRITE;
                                can_rw.can_data[0] = CAN_TXN_QUERY; // send a query
                                can_rw.len = 1;
                                can_write(&can_rw);
                                printf("[-->] Boot flash write requested !\n");

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
                                switch(each_hex_line_buff.data_type){ // Based on the line type switch to send positions
                                        case 0: // Data bytes in the line
                                                if(flash_wr_info.sent_page_byte_counter < each_hex_line_buff.data_len){ // Send bytes

                                                        /* Caution : Not handling the max page bytes as the hex file did that */
                                                        can_rw.can_id = CAN_SEND_FLASH_DATA;
                                                        /* byte 0 is the packet seq */
                                                        can_rw.can_data[0] = flash_wr_info.page_byte_seq++;

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
                                                        printf("[Line %d]",each_hex_line_buff.line_count);

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
                                                printf("[-->] EXT segment adress sent [0x %x-%x]\n",each_hex_line_buff.data[0],each_hex_line_buff.data[1]);
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
                                                printf("[ ERR ] HEX file Record type not found!\n");
                                                app.state = ERROR;
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
                                printf("\n\nState ERROR: Abort !\n\n");
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
void decode_incomming_can_data(can_context_type * can  , type_machine_state * app)
{
        switch(can->can_id){
                /*
                * If it is a reply of boot flash write
                */
                case CAN_START_FLASH_WRITE:
                        flash_wr_info.mcu_page_size = can->can_data[0];
                        printf("[<--] Page Size: %d\n",flash_wr_info.mcu_page_size);
                        flash_wr_info.bit32_data = can->can_data[2];
                        flash_wr_info.bit32_data = (flash_wr_info.bit32_data << 8);
                        flash_wr_info.bit32_data &= 0xFF00;
                        flash_wr_info.bit32_data |= can->can_data[1];
                        flash_wr_info.curr_mcu_mem_addr  =  flash_wr_info.bit32_data;
                        printf("[<--] MCU Base adress: 0x%x\n",flash_wr_info.curr_mcu_mem_addr);
                        
                        /* Application ack get and based on data next state decide */
                        if(flash_wr_info.mcu_page_size !=0 ){
                                // If success then read the hex file and further process
                                app->state = DECODE_HEX_FILE;
                        } else {
                                printf("[<--][ ERR ] MCU page size get 0\n"); 
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
                        if(flash_wr_info.page_byte_seq == can->can_data[0] + 1){
                                /* Write other bytes */
                                app->state = FLASH_WRITE;
                                printf(">"); 
                        } else {
                                printf("[<--] MCU data packet seq mismatch\n");
                                app->state = ERROR;
                        }
                break;

                case CAN_SEND_PAGE_COMPLETE:
                        /* Page write ack from MCU */
                        if(can->can_data[0]) { // page write successful so decode next line and send
                                printf("*");
                                /* MCU send infomations */
                                printf("    [Bytes %d]",can->can_data[1]);// number of bytes written
                                bit_to_arr_conv.byte_arr[0] = can->can_data[2];
                                bit_to_arr_conv.byte_arr[1] = can->can_data[3];
                                bit_to_arr_conv.byte_arr[2] = can->can_data[4];
                                bit_to_arr_conv.byte_arr[3] = can->can_data[5];
                                 flash_wr_info.curr_mcu_mem_addr =  bit_to_arr_conv.bit32_data;
                                printf("    [Address: 0x%x]",flash_wr_info.curr_mcu_mem_addr);
                                /* Line percentage calculation */
                                float complete_percent = (float)((each_hex_line_buff.line_count / (float)each_hex_line_buff.total_line_count) * 100.f); 
                                printf("   [%.2f %c]\n", complete_percent, '%');
                                app->state = DECODE_HEX_FILE;

                        } else {
                                printf("[<--] MCU page write failed !\n");
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

                        printf("[<--] MCU Extended segment adress ACK  [0x%x]\n", flash_wr_info.curr_mcu_mem_addr);
                        /* next state decode hex file */
                        app->state = DECODE_HEX_FILE;
                break;



                case CAN_SEND_JUMP_TO_APP:
                        if(can->can_data[0]){
                                printf("Upload Complete!\nJump to application....\n");
                                app->state = APP_EXIT;
                        } else {
                                printf("APP jumpo Wrong Ack\n");
                                app->state = ERROR;
                        }
                break;

                case CAN_SENT_FLASH_WRITE_ERROR: // flash write error in mcu
                        printf("[<--] ERROR: MCU flah write\n");
                        app->state = ERROR;
                break;




                /* Read reset replys */
                case EJC_MCU_RST_FB_1:
                        app->state = START_BOOT_FLASH_WRITE;
                break;

                case EJC_MCU_RST_FB_2:
                        app->state = START_BOOT_FLASH_WRITE;
                break;

                case EJC_MCU_RST_FB_3:
                        app->state = START_BOOT_FLASH_WRITE;
                break;

                case EJC_MCU_RST_FB_4:
                        app->state = START_BOOT_FLASH_WRITE;
                break;


                default:
                        //printf("[<--]ERROR: CAN Message ID Not listed! [ 0x%x ]\n",can->can_id);
                        app->state = READ_SERIAL_CAN_DATA;
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
        printf("%s: Reading Completed! Total Line %d\n" , file_name , each_hex_line_buff.total_line_count);
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
  
