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
flash_wr_info_type flash_wr_info;

clock_t process_save_time;

/* Global hex file operation related macros */
uint8_t hex_line_red_buffer[200];

int hex_file_line_data_len = 0;
uint8_t hex_file_line_adress [4];
int hex_file_line_type = 0;
uint8_t hex_line_flas_data_buffer[200];


//--------------- Individual data filed buffer _
char *portname = "/dev/ttyACM0";
char* global_hex_file_name = "blink.hex";


// MCU parametres
int mcu_pagesize = 0;





int i;
/* Function Prototype ______________________________________________________________*/
void each_hex_line_operation(char * data , int * data_len , uint8_t * adress , int * type  , uint8_t * flash_data);
void read_file_to_queue(char * file_name , queue* q);



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
                                can_rw.can_id = CAN_ASK_PAGE_SIZE;
                                can_rw.can_data[0] = 1;
                                can_rw.len = 1;
                                can_write(&can_rw);
                                printf("Pagesize Asked------------!\n\r");
                                app.state = READ_SERIAL_CAN_DATA;
                        break;

                        

                        case DECODE_CAN_DATA: //**************************************************************************
                                //printf("CAN Message ID received: %x\n\r",can_rw.can_id);
                                switch(can_rw.can_id){
                                       case CAN_ASK_PAGE_SIZE: // Page reply get
                                                if(can_rw.can_data[0] != 0){ // page size received
                                                        mcu_pagesize = can_rw.can_data[0];
                                                        printf("MCU Page Size: %d\n\r",mcu_pagesize);
                                                        app.state = DECODE_HEX_FILE;
                                                } else {
                                                        printf("CAN: Pazesize asked err in data!\n\r");
                                                        app.state = ERROR;
                                                }
                                       break;

                                        case CAN_SEND_EXT_LIN_ADDR: // extended linear adress received
                                                flash_wr_info.temp_ext_lin_addr = ( ((can_rw.can_data[3]<<24) & 0xFF000000) | ((can_rw.can_data[2]<<16) & 0xFF0000) | ((can_rw.can_data[1]<<8) & 0xFF00)   | can_rw.can_data[0] );
                                                flash_wr_info.curr_mcu_page_adress = flash_wr_info.temp_ext_lin_addr;
                                                printf("CAN: Ext linr ack [ Curr page adress ]: %x\n\r", flash_wr_info.temp_ext_lin_addr);
                                                flash_wr_info.mcu_data_accept_ready = 0; //data send not ready ask mcu for ready?
                                                printf("CAN: Flash write status!\n\r");
                                                can_rw.can_id = CAN_SEND_DATA_WRITE_READY;
                                                can_rw.len = 1;
                                                can_rw.can_data[0] = 0xFF;
                                                can_write(&can_rw);                                                
                                                app.state = READ_SERIAL_CAN_DATA;
                                        break;

                                        case CAN_SEND_DATA_WRITE_READY:
                                                if(can_rw.can_data[0] == 1){
                                                        flash_wr_info.mcu_data_accept_ready = 1; // ready for accept data
                                                        printf(">>>>>>>MCU Rdy\n\r");
                                                        app.state = DECODE_HEX_FILE;
                                                } else {
                                                        printf("MCU Not ready! ack %d\n\r",can_rw.can_data[0]);
                                                        app.state = ERROR;
                                                }
                                                
                                        break;

                                        case CAN_SEND_PAGE_COMPLETE:
                                                if(can_rw.can_data[0] == 1){ // write success
                                                        flash_wr_info.mcu_data_accept_ready = 1;
                                                        flash_wr_info.page_byte_counter = 0;
                                                        flash_wr_info.wr_success_page_counter++;
                                                        flash_wr_info.temp_ext_lin_addr = ( ((can_rw.can_data[4]<<24) & 0xFF000000) | ((can_rw.can_data[3]<<16) & 0xFF0000) | ((can_rw.can_data[2]<<8) & 0xFF00)   | can_rw.can_data[1] );
                                                        flash_wr_info.curr_mcu_page_adress = flash_wr_info.temp_ext_lin_addr;
                                                        app.state = FLASH_WRITE;
                                                        #if FLAS_DEBUG_EN
                                                        printf("F p-addr %x\n\r",flash_wr_info.curr_mcu_page_adress);
                                                        #else 
                                                        printf("-");
                                                        #endif
                                                } else {
                                                        printf("MCU page write negative ack!\n\r");
                                                        flash_wr_info.temp_ext_lin_addr = ( ((can_rw.can_data[4]<<24) & 0xFF000000) | ((can_rw.can_data[3]<<16) & 0xFF0000) | ((can_rw.can_data[2]<<8) & 0xFF00)   | can_rw.can_data[1] );
                                                        flash_wr_info.curr_mcu_page_adress = flash_wr_info.temp_ext_lin_addr;
                                                        app.state = ERROR;
                                                }
                                               
                                        break;

                                        case CAN_SEND_FLASH_DATA:
                                                if(can_rw.can_data[0] == 1){ // write success
                                                        flash_wr_info.mcu_data_accept_ready = 1;
                                                        app.state = FLASH_WRITE;
                                                        printf(">>>>>>>Flash nxt byte  Rdy\n\r");
                                                } else {
                                                      printf("MCU byte write ack %d! \n\r", can_rw.can_data[0]);
                                                        app.state = ERROR;  
                                                }
                                        break;
                                        
                                        case CAN_SEND_EOF_MCU_RESET:
                                                if(can_rw.can_data[0] == 1){ // MCU reset done
                                                        printf("*************    MCU reset done  *************!\n\r");
                                                        app.state = APP_EXIT;
                                                } else {
                                                        printf("*************    MCU reset fail !!! *************!\n\r");
                                                        app.state = ERROR;
                                                }
                                        break;



                                        case CAN_SENT_FLASH_WRITE_ERROR:
                                                printf("MCU Flash write data not match with read \n\r");
                                                app.state = ERROR;
                                        break;




                                       default:
                                                printf("CAN Message ID Not listed!%x\n\r",can_rw.can_id);
                                                app.state = ERROR;
                                       break;
                               }
                        break;

                        case DECODE_HEX_FILE:
                                if(queue_size(&hex_line_q) > 0){
                                        memset(hex_line_red_buffer, 0, 200);
                                        memset(hex_file_line_adress, 0, 4);
                                        memset(hex_line_flas_data_buffer, 0, 200);
                                        
                                        peek(&hex_line_q ,hex_line_red_buffer);
                                        each_hex_line_operation(hex_line_red_buffer , 
                                                                &hex_file_line_data_len , 
                                                                hex_file_line_adress , 
                                                                &hex_file_line_type, 
                                                                hex_line_flas_data_buffer);
                                        flash_wr_info.byte_track_in_line = 0; // after that track
                                        flash_wr_info.curr_page_addr = hexadecimalToDecimal(hex_file_line_adress);
                                        pop(&hex_line_q);
                                        if(flash_wr_info.first_time_data_read){ // only execute at first time
                                                flash_wr_info.first_time_data_read = 0;
                                                flash_wr_info.first_time_data_sent =1;
                                        }
                                        app.state = FLASH_WRITE;
                                } else { // All hex file line adressed file operation done

                                }
                                
                                
                        break;

                        case FLASH_WRITE: //**************************************************************************
                                switch(hex_file_line_type){
                                        case 4: // extended linear adress -> send liner adredss from hex file
                                                // Extract the liner ext adress 16 bit
                                                memset(flash_wr_info.temp_ext_lin_addr_buff, 0 , 4);
                                                flash_wr_info.temp_ext_lin_addr = 0;
                                                for(i=0;i<4;i++){
                                                        flash_wr_info.temp_ext_lin_addr_buff[i] =hex_line_flas_data_buffer[i];
                                                }
                                                flash_wr_info.temp_ext_lin_addr = hexadecimalToDecimal(flash_wr_info.temp_ext_lin_addr_buff);
                                                
                                                flash_wr_info.curr_page_addr = hexadecimalToDecimal(hex_file_line_adress);
                                                flash_wr_info.last_sent_ext_lin_addr = flash_wr_info.temp_ext_lin_addr;

                                                #if FLAS_DEBUG_EN
                                                        printf("F CAN send ext lin addr %x---------------------\n\r", flash_wr_info.temp_ext_lin_addr);
                                                #endif

                                                // Write the adress through can

                                                can_rw.can_id = CAN_SEND_EXT_LIN_ADDR;
                                                can_rw.len = 2; //  2 byte contains the adress and other 1 contains seq no
                                                can_rw.can_data[0] = (uint8_t)flash_wr_info.temp_ext_lin_addr;
                                                can_rw.can_data[1] = (uint8_t)(flash_wr_info.temp_ext_lin_addr>>8);
                                                can_write(&can_rw);
                                                

                                                app.state = READ_SERIAL_CAN_DATA;
                                        break;

                                        case 0: // Flash data
                                                if(flash_wr_info.first_time_data_sent == 0){ // not first time
                                                        if( (flash_wr_info.page_byte_counter < mcu_pagesize) && (flash_wr_info.mcu_data_accept_ready) ){ // if not page bytes reached and data accept is ready
                                                        if(flash_wr_info.byte_track_in_line < (hex_file_line_data_len*2) ){ // each 2 hex char  = 1 byte data
                                                        
                                                                can_rw.can_id = CAN_SEND_FLASH_DATA;
                                                                can_rw.len = 8;
                                                                can_rw.can_data[0] = ((flash_wr_info.byte_seq_counter++) + 1); // send the current data seq
                                                                for(i=1;i<5; i++){
                                                                        flash_wr_info.temp_data_conv_buff[0] =  hex_line_flas_data_buffer[flash_wr_info.byte_track_in_line++];
                                                                        flash_wr_info.temp_data_conv_buff[1] =  hex_line_flas_data_buffer[flash_wr_info.byte_track_in_line++];
                                                                        can_rw.can_data[i] = hexadecimalToDecimal(flash_wr_info.temp_data_conv_buff);
                                                                        memset(flash_wr_info.temp_data_conv_buff , 0 , 2);
                                                                        printf("-%x", can_rw.can_data[i]);
                                                                        flash_wr_info.page_byte_counter++;
                                                                        flash_wr_info.write_page_byte_counter++;

                                                                }
                                                                printf("\n\rD Seq:%d\n\r",can_rw.can_data[0]);
                                                                can_write(&can_rw);
                                                                flash_wr_info.mcu_data_accept_ready = 0; // wait for ack
                                                                app.state = READ_SERIAL_CAN_DATA;
                                                        
                                                                } else {
                                                                        flash_wr_info.byte_track_in_line = 0; // reset the byte counter and will be update after decode hex file
                                                                        app.state = DECODE_HEX_FILE;
                                                                }
                                                } else if(flash_wr_info.mcu_data_accept_ready){
                                                        /* send page byte send query */
                                                        can_rw.can_id = CAN_SEND_PAGE_COMPLETE;
                                                        can_rw.len = 1;
                                                        can_rw.can_data[0] = 1;
                                                        can_write(&can_rw);
                                                        flash_wr_info.mcu_data_accept_ready = 0; // not ready for send number of pages
                                                        flash_wr_info.curr_mcu_page_adress += mcu_pagesize;
                                                        flash_wr_info.byte_seq_counter = 0;

                                                        app.state = READ_SERIAL_CAN_DATA;
                                                } else {
                                                        app.state = READ_SERIAL_CAN_DATA;
                                                }


                                                } else { // first time data sent with adress
                                                        flash_wr_info.first_time_data_sent = 0; 
                                                        can_rw.can_id = CAN_SEND_EXT_LIN_ADDR;
                                                        can_rw.len = 2; //  2 byte contains the adress and other 1 contains seq no
                                                        flash_wr_info.temp_ext_lin_addr = flash_wr_info.curr_page_addr;
                                                        can_rw.can_data[0] = (uint8_t)flash_wr_info.temp_ext_lin_addr;
                                                        can_rw.can_data[1] = (uint8_t)(flash_wr_info.temp_ext_lin_addr>>8);
                                                        can_write(&can_rw);
                                                        
                                                        app.state = READ_SERIAL_CAN_DATA;
                                                }
                                                
                                        break;

                                        case 1: // End of file
                                                can_rw.can_id = CAN_SEND_EOF_MCU_RESET;
                                                app.state = ERROR;
                                        break;

                                        default:
                                        break;
                                }
                        break;
                
                        
                
                        case READ_SERIAL_CAN_DATA: //**************************************************************************
                               can_read(&can_rw); //  Read the data from serial || Blocking in this method
                               app.state = DECODE_CAN_DATA;
                        break;
                
                        case ERROR: //**************************************************************************
                                printf("\n\r\n\rError at state Execution! Abort !\n\r");
                                printf("Flash Write Status:---------------------!\n\r");
                                printf("Curr page Addr:%x\n\r",flash_wr_info.curr_page_addr);
                                printf("Curr mcu page Addr:%x\n\r",flash_wr_info.curr_mcu_page_adress);
                                printf("Last sent ext lin addr:%x\n\r",flash_wr_info.last_sent_ext_lin_addr);
                                printf("Successful pages count:%d\n\r",flash_wr_info.wr_success_page_counter);
                                printf("Total data byte write:%d\n\r",flash_wr_info.write_page_byte_counter);
                                goto out_from_loop;
                        break;

                        case APP_EXIT:
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

void each_hex_line_operation(char * data , int * data_len , uint8_t * adress , int * type  , uint8_t * flash_data)
{       
        char rec_lengh[2] = {}; // Record length
        char addr[4] = {};
        char rec_type[2] = {};
        char data_filed[100] = {};
        char check_sum[2] = {};
        #if EACH_HEX_FILE_LINE_DECOMPOSE_PRINT
        printf("Whole Line :%s\n\r", data);
        #endif
        /*Record length extract */
        for(int i = REC_LENGTH_START_INDEX , j = 0 ; i< (REC_LENGTH_START_INDEX + REC_LENGTH_LENGTH) ; i++ , j++){
                 rec_lengh[j] = data[i];
        }     
        *data_len= hexadecimalToDecimal(rec_lengh); // data bytes length
        #if EACH_HEX_FILE_LINE_DECOMPOSE_PRINT
        printf("rec length: %s\n\r", rec_lengh);
        #endif


        /* Adress extraction */
        for(int i = ADDR_START_INDEX , j = 0 ; i<(ADDR_START_INDEX + ADDR_LENGTH) ; i++ , j++){
                 adress[j] = data[i];
        }
        #if EACH_HEX_FILE_LINE_DECOMPOSE_PRINT
        printf("adress: %s\n\r", adress);
        #endif


        /* Record type extraciton */

        for(int i = REC_TYPE_START_INDEX , j = 0 ; i<(REC_TYPE_START_INDEX + REC_TYPE_LENGTH) ; i++ , j++){
                 rec_type[j] = data[i];
        }
        #if EACH_HEX_FILE_LINE_DECOMPOSE_PRINT
        printf("type: %s\n\r", rec_type);
        #endif
        *type = hexadecimalToDecimal(rec_type); // Recod type

        for(int i = DATA_START_INDEX , j = 0 ; i<(DATA_START_INDEX + ((*data_len)*2) ) ; i++ , j++){
                 flash_data[j] = data[i];
        }

        #if EACH_HEX_FILE_LINE_DECOMPOSE_PRINT
        printf("flash data: %s\n\r", flash_data);
        #endif
}
  
