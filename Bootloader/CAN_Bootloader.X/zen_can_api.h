/*
*/

#ifndef _ZEN_CAN_API_H_
#define _ZEN_CAN_API_H_ 1

#include <hal_can_async.h> // Hal can include for ASF 4 api support
#include <hpl_can_async.h>
#include <hpl_can_base.h>
#include <hpl_can_config.h>
#include <hri_can_c21n.h>
#include <hpl_can.h>

//#include <driver_init.h>

#include <peripheral_clk_config.h>
#include <string.h>
#include <inttypes.h>
#include <zen_message_id.h>








/*
Function API
*/
//void can_init(struct can_async_descriptor * descr , void *const hw , unsigned int baud_rate , unsigned char rx_int_flag , unsigned char tx_int_flag);
void can_begin(struct can_async_descriptor * descr, void *const hw , unsigned int baud_rate , unsigned char can_silent_pin);
void can_set_txcb(struct can_async_descriptor * descr , FUNC_PTR cb);
void can_set_rxcb(struct can_async_descriptor * descr , FUNC_PTR cb);
void can_send(struct can_async_descriptor * descr , unsigned int ID, unsigned char ext_flag, unsigned char dlc, can_frame_type can_frame);
unsigned char can_receive(struct can_async_descriptor * descr , unsigned int* ID, can_frame_type * can_frame);
void can_set_filter(struct can_async_descriptor * descr , unsigned int ID, unsigned int mask, unsigned char ext);

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
/*
Function Name: can_begin
Task:          Initialize the descriptor and hardware 
*/
void can_begin(struct can_async_descriptor * descr, void *const hw , unsigned int baud_rate , unsigned char can_silent_pin)
{
	struct _can_async_device *const dev = &descr->dev;
	
	uint32_t can_nbtp_nbrp_value;
	uint32_t can_nbtp_nsgw_value = 3, can_nbtp_ntseg1_value = 10, can_nbtp_ntseg2_value = 3;
	baud_rate = baud_rate*1000;
	can_nbtp_nbrp_value = CONF_GCLK_CAN1_FREQUENCY / baud_rate / (3 + can_nbtp_ntseg1_value + can_nbtp_ntseg2_value);
	                 
	int can_btp_reg_val = CAN_NBTP_NBRP(can_nbtp_nbrp_value) | CAN_NBTP_NTSEG1(can_nbtp_ntseg1_value) | CAN_NBTP_NTSEG2(can_nbtp_ntseg2_value) | CAN_NBTP_NSJW(can_nbtp_nsgw_value);
	/*
	int can_dbtp_reg_val = 	(CONF_CAN0_DBTP_TDC << CAN_DBTP_TDC_Pos) | CAN_DBTP_DBRP(1- 1)| CAN_DBTP_DTSEG1(17 - 1) | CAN_DBTP_DTSEG2(6 - 1) | CAN_DBTP_DSJW(3- 1);
    */


	dev->hw = hw;
	hri_can_set_CCCR_INIT_bit(dev->hw);
	while (hri_can_get_CCCR_INIT_bit(dev->hw) == 0);
	hri_can_set_CCCR_CCE_bit(dev->hw);

	#ifdef CONF_CAN0_ENABLED
	if (hw == CAN0) {
		
		//hri_can_write_DBTP_reg(dev->hw, can_dbtp_reg_val);
		NVIC_DisableIRQ(CAN0_IRQn);
		NVIC_ClearPendingIRQ(CAN0_IRQn);
		hri_can_write_NBTP_reg(dev->hw, can_btp_reg_val);
		NVIC_EnableIRQ(CAN0_IRQn);
		hri_can_write_ILE_reg(dev->hw, CAN_ILE_EINT0);
	}
	#endif

	#ifdef CONF_CAN1_ENABLED
	if (hw == CAN1) {
		
		//hri_can_write_DBTP_reg(dev->hw, can_dbtp_reg_val);

		NVIC_DisableIRQ(CAN1_IRQn);
		NVIC_ClearPendingIRQ(CAN1_IRQn);
		hri_can_write_NBTP_reg(dev->hw, can_btp_reg_val);
		NVIC_EnableIRQ(CAN1_IRQn);
		hri_can_write_ILE_reg(dev->hw, CAN_ILE_EINT0);
	}
	#endif

	/* Disable CCE to prevent Configuration Change */
	hri_can_clear_CCCR_CCE_bit(dev->hw);
	hri_can_clear_CCCR_INIT_bit(dev->hw);
	while (hri_can_get_CCCR_INIT_bit(dev->hw)) 
	{
	};
	
	can_async_enable(descr);
	
	gpio_set_pin_direction(can_silent_pin , GPIO_DIRECTION_OUT);
	gpio_set_pin_level(can_silent_pin, 0); // Set CAN silent pin LOW
	
}

/*
Function Name: can_set_txcb
Task:          Initialize the descriptor and hardware
*/
void can_set_txcb(struct can_async_descriptor * descr , FUNC_PTR cb)
{
	 can_async_register_callback( descr , CAN_ASYNC_TX_CB, cb);
}

/*
Function Name: can_set_rxcb
Task:          Initialize the descriptor and hardware
*/
void can_set_rxcb(struct can_async_descriptor * descr , FUNC_PTR cb)
{
	can_async_register_callback(descr, CAN_ASYNC_RX_CB, cb);
}

/*
Function Name: can_send
Task:          Send the can frame data
*/
void can_send(struct can_async_descriptor * descr , unsigned int ID, unsigned char ext_flag, unsigned char dlc, can_frame_type can_frame)
{
	struct can_message tx_msg;
	
	tx_msg.id   = ID;
	tx_msg.type = CAN_TYPE_DATA;
	tx_msg.data = can_frame.data;
	tx_msg.len  = dlc;
	if(ext_flag)
		tx_msg.fmt  = CAN_FMT_EXTID;
	else	
		tx_msg.fmt  = CAN_FMT_STDID;
	
	can_async_write(descr , &tx_msg); // ASF 4 Can write API.	
}

/*
Function Name: can_receive
Task:          Receive the can frame data
*/
unsigned char  can_receive(struct can_async_descriptor * descr , unsigned int* ID, can_frame_type * can_frame)
{
	struct can_message rx_msg;
	//uint8_t    data[8];
	rx_msg.data = can_frame->data;
	
	can_async_read(descr, &rx_msg);
	
	//can_frame->data = rx_msg.data;
	*ID = rx_msg.id;
	
	if(rx_msg.type == CAN_TYPE_DATA)
		return DATA_FRAME;
	else if(rx_msg.type == CAN_TYPE_REMOTE)
		return REMOTE_FRAME;
	else 
		return 0; // False Information
	
}

/*
Function Name: can_receive
Task:          Receive the can frame data
*/
void can_set_filter(struct can_async_descriptor * descr , unsigned int ID, unsigned int mask, unsigned char ext)
{
	struct can_filter  filter; // Filter ID and MASK
	filter.id   = ID;
	filter.mask = mask;
	
	if(ext) // Extended frame format
		can_async_set_filter(descr, 0, CAN_FMT_EXTID , &filter); // Index 0
	else 
		can_async_set_filter(descr, 0, CAN_FMT_STDID , &filter); // Index 0
	
	
	return;
}








#endif