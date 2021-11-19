/*
*/

#ifndef _ZEN_CAN_API_H_
#define _ZEN_CAN_API_H_ 1

#include <hal_can_async.h> // Hal can include for ASF 4 api support
#include <hpl_can_async.h>
#include <hpl_can_base.h>
#include <hpl_can_config.h>
#if (NODE == 4)
#include <hri_can_c21.h> // for weighing
#else 
#include <hri_can_c21n.h> // for others
#endif

#include <hpl_can.h>

//#include <driver_init.h>

#include <peripheral_clk_config.h>
#include <string.h>
#include <inttypes.h>
#include <zen_message_id.h>

/* Related IO Inclusion */
#define DEBUG_LED		36	// PB04


/* CAN Operation related variables */
can_frame_type	can_tx_frame;
can_frame_type  can_rx_frame;


//typedef void (*FUNC_POTR)(struct _can_async_device *dev, enum can_async_interrupt_type type);





/*
Function API
*/
//void can_init(struct can_async_descriptor * descr , void *const hw , unsigned int baud_rate , unsigned char rx_int_flag , unsigned char tx_int_flag);
void can_begin(struct can_async_descriptor * descr, void *const hw , unsigned int baud_rate , unsigned char can_silent_pin);
void can_set_txcb(struct can_async_descriptor * descr , FUNC_PTR cb);
void can_set_rxcb(struct can_async_descriptor * descr , FUNC_PTR cb);
void can_send(struct can_async_descriptor * descr , unsigned int ID, unsigned char ext_flag, unsigned char dlc, can_frame_type can_frame);
unsigned char can_receive(struct can_async_descriptor * descr , unsigned int* ID, can_frame_type * can_frame,  int * len);
void can_set_filter(struct can_async_descriptor * descr , unsigned int ID, unsigned int mask, unsigned char ext);
void can_busoff_set_cb(struct can_async_descriptor *const descr);

/* CAN messages call backs*/
//void can_rx_cb_fxn(); //RX Callback function
//void can_tx_cb_fxn(); //TX Callback function 




/*
Function Name: can_init
Task:          Initialize the can for operation
*/
/*
void can_init(struct can_async_descriptor  descr,void const hw, unsigned int baud_rate , unsigned char rx_int_flag , unsigned char tx_int_flag)
{
	can_begin(descr , hw, baud_rate);         // Initialize the CAN0 instance 
	if(rx_int_flag)
		can_set_rxcb((FUNC_PTR)can_rx_cb_fxn); // Set the can rx callback function
	if(tx_int_flag)
		can_set_txcb((FUNC_PTR)can_tx_cb_fxn); // Set the can tx callback function
		
}

*/









#endif