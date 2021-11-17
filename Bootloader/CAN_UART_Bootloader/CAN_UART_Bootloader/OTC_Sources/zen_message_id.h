/*
This header file contains the CAN message Id definition of any node.
This header must be included to all the code developing for Hortisort Distributed Nodes.
Copr @ Zentron Labs 

---------------------------------
Verison: 2.0
Revision : 3
---------------------------------
Last Modified: 31-08-2021

last feature added: Debug Commands added and Loadcell Waveform messages added.


*/

#ifndef _ZEN_MESSAGE_ID_H_
#define _ZEN_MESSAGE_ID_H_

#include <inttypes.h>

#define NODE 				13

#define DATA_FRAME               	1               // Data Frame identifier macro
#define REMOTE_FRAME             	2               // Remote Frame identifier macro

#define EXT_ID                   	1               // Extended Id macro
#define STD_ID                   	0                // Standard ID macro


/* 11 Bit CAN Message ID Formation*/
#define CAN_ID(x,y,z) ((x<<10)|(y<<6)|(z)) // x: Priority y: Node ID z: Message ID

#ifndef NODE
#error Define NODE in main
#endif

/****************************   Encoder Node Definition ***********************/
                  /* Message ID*/
#define GCPART                  CAN_ID(0,0,0)           // GC Part message containing the last byte
#define GCFULL                  CAN_ID(0,0,1)           // Full 32 bit counter
#define CUPID                   CAN_ID(0,0,2)           // CUP  ID for tracking one cup movement
#define ENCWRONGSTATETRANS      CAN_ID(0,1,2)         	// Wrong State Transition at the encoder	
#define ENCZPULSEMISS           CAN_ID(0,1,5)        	// Missing G Pulse 
#define ENCSLIPPAGE				CAN_ID(0,1,6)         	// Encloder slippage 
#define ENC_EJC_CUPTILTST       CAN_ID(0,1,7)			
#define ENCCUPMISBEHAVE			CAN_ID(0,1,8)			
#define ENCCUPSEC               CAN_ID(0,1,9)         	// Cups per second 
#define ENC_Z_PULSE_STATUS 		CAN_ID(0,1,44)			
#define ENC_IN_MOTION_STOP		CAN_ID(0,1,46)			
#define CUPIND_SENSOR_CUT		CAN_ID(1,1,1)			
#define ENC_GC_CUP_TRIG			CAN_ID(1,1,2)			
#define ENC_BIN_FILL_SENSE		CAN_ID(0,1,3)
#define ENC_JSON_REPLY			CAN_ID(1,1,26)
#define ENC_WRONG_DIR			CAN_ID(0,1,47)			
#define ENC_ESTOP_BTN			CAN_ID(1,1,39)
#define ENC_MCU_RST_FB			CAN_ID(0,1,57)

				/* DLC Definitions  All the DLC define size in byte */
#define DLC_GCPART		        (1) 
#define DLC_GCPART_TR			(2)          
#define DLC_GCFULL              (4)
#define DLC_GCFULL_TR			(5)          
#define DLC_CUPID               (2)
#define DLC_ENCSLIPPAGE			(7)
#define DLC_ENC_EJC_CUPTILTST   (8)
#define DLC_ENCCUPMISBEHAVE     (3)      
#define DLC_ENCCUPSEC           (1) 
#define DLC_ENC_Z_PULSE_STATUS	(3)
#define DLC_CUPIND_SENSOR_CUT	(1)
#define DLC_ENC_GC_CUP_TRIG     (5)
#define DLC_ENC_JSON_REPLY		(4)
#define DLC_ENC_ESTOP_BTN		(1)
/*****************************************************************************/




/*******************   Vision Station Node Definition ************************/
					/*Message ID*/ 
#define CAMINFO 				CAN_ID(0,1,0)        // Camera feedback [Position info + Camera feedback]
#define VISIONDELAYEDCAMFB		CAN_ID(0,1,1)
#define	VS_ENCWRONGSTATETRANS	CAN_ID(0,1,50)
#define	VS_ENCWRONGDIR			CAN_ID(0,1,51)
#define	VS_ENCZPULERRSTATUS		CAN_ID(0,1,52)
#define	VSCONVCAMINFO			CAN_ID(0,1,53)
#define VSCUPSPERSEC			CAN_ID(0,1,54)
#define VS_JSON_REPLY			CAN_ID(1,1,25)
#define VS_ESTOP_BTN			CAN_ID(1,1,40)
#define VS_MCU_RST_FB			CAN_ID(0,1,56)

                    /*DLC Definitions Size in bytes*/
#define DLC_CAMINFO					(8)
#define DLC_VISIONDELAYEDCAMFB		(1)
#define DLC_VSCONVCAMINFO			(8)
#define DLC_VSCUPSPERSEC			(1)
#define DLC_VS_JSON_REPLY			(4)
#define DLC_VS_ESTOP_BTN			(1)
/*****************************************************************************/




/******************* Weighing Node Definition ********************************/
/* Message ID */

#define WGHDT                   CAN_ID(0,1,10)
#define ADCE                    CAN_ID(0,1,11)
#define WGPINGRSP               CAN_ID(1,1,0)
#define WG_WAVE_EN              CAN_ID(1,1,23)
#define WG_SAMP_WINDOW          CAN_ID(1,1,24)
#define WG_TOOL_WGHDT           CAN_ID(1,1,53)
#define WG_JSON_REPLY			CAN_ID(1,1,35)
#define WG_ESTOP_BTN			CAN_ID(1,1,41)
#define WG_MCU_RST_FB			CAN_ID(0,1,58)

/* DLC Definition Size in Byte */
#define DLC_WGHDT               (8)
#define DLC_ADCE                (2)
#define DLC_WGPINGRSP           (5)
#define DLC_WG_WAVE_EN          (5)
#define DLC_WG_SAMP_WINDOW      (1)
#define DLC_WG_TOOL_WGHDT       (8)
#define DLC_WG_JSON_REPLY       (4)
#define DLC_WGHSAM	            (1)
#define DLC_WG_ESTOP_BTN		(1)
/*****************************************************************************/




/******************* Ejection Node Definition ********************************/
/* Message ID */

#define EJC_OUT_GC_1         	CAN_ID(0,1,12)        // The GC is out of range
#define EJC_OUT_GC_2            CAN_ID(0,1,13)
#define EJC_OUT_GC_3            CAN_ID(0,1,14)
#define EJC_OUT_GC_4            CAN_ID(0,1,15)
#define EJC_OUT_GC_5            CAN_ID(0,1,16)
#define EJC_OUT_GC_6            CAN_ID(0,1,17)
#define EJC_OUT_GC_7            CAN_ID(0,1,18)
#define EJC_OUT_GC_8            CAN_ID(0,1,19)

#define EJC_QUEUE_FULL_1        CAN_ID(0,1,20)         // Queue Full warning
#define EJC_QUEUE_FULL_2        CAN_ID(0,1,21)
#define EJC_QUEUE_FULL_3        CAN_ID(0,1,22)
#define EJC_QUEUE_FULL_4        CAN_ID(0,1,23)
#define EJC_QUEUE_FULL_5        CAN_ID(0,1,24)
#define EJC_QUEUE_FULL_6        CAN_ID(0,1,25)
#define EJC_QUEUE_FULL_7        CAN_ID(0,1,26)
#define EJC_QUEUE_FULL_8        CAN_ID(0,1,27)

#define EJC_MSG_FB_1			CAN_ID(0,1,28)         // Ejection Packet Ack
#define EJC_MSG_FB_2			CAN_ID(0,1,29)
#define EJC_MSG_FB_3			CAN_ID(0,1,30)
#define EJC_MSG_FB_4			CAN_ID(0,1,31)
#define EJC_MSG_FB_5			CAN_ID(0,1,32)
#define EJC_MSG_FB_6			CAN_ID(0,1,33)
#define EJC_MSG_FB_7			CAN_ID(0,1,34)
#define EJC_MSG_FB_8			CAN_ID(0,1,35)

#define EJC_ACT_FB_1            CAN_ID(0,1,36)           // Ejecton Feedback
#define EJC_ACT_FB_2			CAN_ID(0,1,37)
#define EJC_ACT_FB_3            CAN_ID(0,1,38)
#define EJC_ACT_FB_4            CAN_ID(0,1,39)
#define EJC_ACT_FB_5            CAN_ID(0,1,40)
#define EJC_ACT_FB_6            CAN_ID(0,1,41)
#define EJC_ACT_FB_7            CAN_ID(0,1,42)
#define EJC_ACT_FB_8            CAN_ID(0,1,43)

#define EJC_IN_MOTION_STOP 		CAN_ID(0,1,45)

#define EJC_ERROR_1		CAN_ID(1,1,7)         // The wrong GC has flushed
#define EJC_ERROR_2		CAN_ID(1,1,8)
#define EJC_ERROR_3		CAN_ID(1,1,9)
#define EJC_ERROR_4		CAN_ID(1,1,10)
#define EJC_ERROR_5		CAN_ID(1,1,11)
#define EJC_ERROR_6		CAN_ID(1,1,12)
#define EJC_ERROR_7		CAN_ID(1,1,13)
#define EJC_ERROR_8		CAN_ID(1,1,14)

#define EJC_BIN_FILL_SENSE_1    CAN_ID(1,1,15)         // Binfill Sensor Data
#define EJC_BIN_FILL_SENSE_2    CAN_ID(1,1,16)
#define EJC_BIN_FILL_SENSE_3	CAN_ID(1,1,17)
#define EJC_BIN_FILL_SENSE_4	CAN_ID(1,1,18)
#define EJC_BIN_FILL_SENSE_5	CAN_ID(1,1,19)
#define EJC_BIN_FILL_SENSE_6	CAN_ID(1,1,20)
#define EJC_BIN_FILL_SENSE_7	CAN_ID(1,1,21)
#define EJC_BIN_FILL_SENSE_8	CAN_ID(1,1,22)

#define EJC_JSON_REPLY_1		CAN_ID(1,1,27)
#define EJC_JSON_REPLY_2		CAN_ID(1,1,28)
#define EJC_JSON_REPLY_3		CAN_ID(1,1,29)
#define EJC_JSON_REPLY_4		CAN_ID(1,1,30)
#define EJC_JSON_REPLY_5		CAN_ID(1,1,31)
#define EJC_JSON_REPLY_6		CAN_ID(1,1,32)
#define EJC_JSON_REPLY_7		CAN_ID(1,1,33)
#define EJC_JSON_REPLY_8		CAN_ID(1,1,34)

#define EJC_ESTOP_BTN_1			CAN_ID(1,1,42)
#define EJC_ESTOP_BTN_2			CAN_ID(1,1,43)
#define EJC_ESTOP_BTN_3			CAN_ID(1,1,44)
#define EJC_ESTOP_BTN_4			CAN_ID(1,1,45)
#define EJC_ESTOP_BTN_5			CAN_ID(1,1,46)
#define EJC_ESTOP_BTN_6			CAN_ID(1,1,47)
#define EJC_ESTOP_BTN_7			CAN_ID(1,1,48)
#define EJC_ESTOP_BTN_8			CAN_ID(1,1,49)
#define EJC_ESTOP_BTN_9			CAN_ID(1,1,50)

#define EJC_MCU_RST_FB_1		CAN_ID(1,1,54)
#define EJC_MCU_RST_FB_2		CAN_ID(1,1,55)
#define EJC_MCU_RST_FB_3		CAN_ID(1,1,56)
#define EJC_MCU_RST_FB_4		CAN_ID(1,1,57)
#define EJC_MCU_RST_FB_5		CAN_ID(1,1,58)
#define EJC_MCU_RST_FB_6		CAN_ID(1,1,59)
#define EJC_MCU_RST_FB_7		CAN_ID(1,1,60)
#define EJC_MCU_RST_FB_8		CAN_ID(1,1,61)
#define EJC_MCU_RST_FB_9		CAN_ID(1,1,62)

/*DLC Definitions size in Byte*/
#define DLC_EJC_OUT_GC          (7)
#define DLC_EJC_QUEUE_FULL      (1)
#define DLC_EJC_MSG_FB			(6) // Ejection Packet Ack
#define DLC_EJC_ACT_FB          (6) // Ejection Action Feedback
#define DLC_EJC_IN_MOTION_STOP 	(1)
#define DLC_EJC_GC_FLUSH        (1)
#define DLC_EJC_JSON_REPLY      (4)
#define DLC_EJC_ESTOP_BTN		(1)

/*****************************************************************************/




/******************* PC  Node Definition *************************************/
/* Message ID*/
/*Messages for Encoder Node****************/
#define ENC_JSON_START		CAN_ID(0,3,0)
#define ENC_JSON_STOP		CAN_ID(0,3,1)
#define ENC_DEBUG_CMD       CAN_ID(0,3,2)
#define ENC_INIT			CAN_ID(0,3,3)
#define ENC_CLEAR			CAN_ID(0,3,4)
#define ENC_EJC_CAL_EN		CAN_ID(0,3,5)
#define ENC_MCU_RESET		CAN_ID(0,3,6)

/*Mesages for Vision Station**************/
#define VS_JSON_START		CAN_ID(0,2,0)
#define VS_JSON_STOP		CAN_ID(0,2,1)
#define VS_DEBUG_CMD		CAN_ID(0,2,2)
#define VS_INIT				CAN_ID(0,2,3)
#define VS_CLEAR			CAN_ID(0,2,4)
#define VS_DBG_MODE			CAN_ID(0,2,5)
#define VS_CLEAR_SEQ		CAN_ID(0,2,6)
#define VS_EN_OP			CAN_ID(0,2,7)
#define VS_ONE_SHOT			CAN_ID(0,2,8)
#define SIMULATED_ENC_CNTR	CAN_ID(0,2,9)
#define VS_TRIGGER_MODE		CAN_ID(0,2,10)
#define VS_MCU_RESET		CAN_ID(0,2,11)

/*Messages for Weighing Node********************/
#define WG_JSON_START		CAN_ID(0,4,0)
#define WG_JSON_STOP		CAN_ID(0,4,1)
#define WG_DEBUG_CMD		CAN_ID(0,4,2)
#define WG_INIT				CAN_ID(0,4,3)
#define WG_CLEAR			CAN_ID(0,4,4)
#define WG_ENABLE			CAN_ID(0,4,5)
#define WG_PING             CAN_ID(0,4,6)
#define WG_MCU_RESET		CAN_ID(0,4,7)

/*Messages for Ejection Nodes**************/
#define EJC_JSON_START		CAN_ID(0,NODE,0)
#define EJC_JSON_STOP      	CAN_ID(0,NODE,1)
#define EJC_DEBUG_CMD  		CAN_ID(0,NODE,2)
#define EJC_CLEAR			CAN_ID(0,NODE,3)
#define EJC_INIT			CAN_ID(0,NODE,4)
#define EJC_FRUIT_INFO		CAN_ID(0,NODE,5)         // Ejection Packet
#define TOG_SOLENOID_EN		CAN_ID(0,NODE,7)
#define TOG_SOLENOID_OP		CAN_ID(0,NODE,8)
#define TOG_MAN				CAN_ID(0,NODE,9)
#define BACK_SOLENOID		CAN_ID(0,NODE,10)
#define EJC_EN				CAN_ID(0,NODE,11)
#define IN_MOTION_START		CAN_ID(0,NODE,12)
#define EJC_MCU_RESET		CAN_ID(0,NODE,13)

/*Messages for AC Panel********************/
#define AC_JSON_START		CAN_ID(1,14,4)
#define AC_JSON_STOP		CAN_ID(1,14,5)
#define AC_VFD_WRITE		CAN_ID(1,14,6)
#define AC_VFD_READ			CAN_ID(1,14,7)
#define AC_DEBUG_CMD		CAN_ID(1,14,8)
#define AC_MCU_RESET		CAN_ID(1,14,9)
 
/*Messeges for Front Panel*****************/
#define PCSTATUS_TWR		CAN_ID(1,15,0)
#define PCSTATUS_TWG		CAN_ID(1,15,1)
#define PCSTATUS_TWY		CAN_ID(1,15,2)
#define PCSTATUS_SE    		CAN_ID(1,15,3)
#define PCSTATUS_DC_PW_Q	CAN_ID(1,15,4)
#define FP_JSON_START		CAN_ID(1,15,6)
#define FP_JSON_STOP		CAN_ID(1,15,7)
#define PCSTATUS_TW_BUZZER	CAN_ID(1,15,5)
#define FP_DEBUG_CMD		CAN_ID(1,15,8)
#define FP_MCU_RESET		CAN_ID(1,15,9)

/*Messages for all node [Common]**********/
//#define RTC_MSG			(0x8)

/* DLC Definitions Size in Byte*/
/*****Encoder Node****************/
#define DLC_ENC_JSON_START		(1)
#define DLC_ENC_DEBUG_CMD		(1)
#define DLC_ENC_EJC_CAL_EN		(1)

/*****Vision Node****************/
#define DLC_VS_JSON_START       (1)
#define DLC_VS_DEBUG_CMD		(1)
#define DLC_VS_DBG_MODE			(1)
#define DLC_VS_EN_OP			(8)
#define DLC_VS_ONE_SHOT			(1)
#define DLC_SIMULATED_ENC_CNTR	(4)
#define DLC_VS_TRIGGER_MODE		(5)

/*****Weighing Node****************/
#define DLC_WG_JSON_START		(1)
#define DLC_WG_DEBUG_CMD		(1)
#define DLC_WG_ENABLE			(1)

/*****Ejection Node****************/
#define DLC_EJC_JSON_START      (1)
#define DLC_EJC_DEBUG_CMD		(1)
#define DLC_EJC_FRUIT_INFO		(6)
#define DLC_TOG_SOLENOID_EN		(1)
#define DLC_TOG_SOLENOID_OP     (1)
#define DLC_TOG_MAN             (1)
#define DLC_IN_MOTION_START     (5)

/*****AC Panel Node****************/
#define DLC_AC_JSON_START		(1)
#define DLC_AC_VFD_WRITE        (5)
#define DLC_AC_VFD_READ         (5)
#define DLC_AC_DEBUG_CMD		(1)

/*****Front Panel Node****************/
#define DLC_PCSTATUS_TWR		(1)
#define DLC_PCSTATUS_TWG        (1)
#define DLC_PCSTATUS_TWY        (1)
#define DLC_PCSTATUS_SE			(1)
#define DLC_FP_JSON_START		(1)
#define DLC_PCSTATUS_TW_BUZZER  (1)
#define DLC_FP_DEBUG_CMD		(1)

#define DLC_RTC_MSG             (4)
/*****************************************************************************/





/************************** AC Panel Node Definition****************************/
/* Message ID */
#define ACVFDFAULT          CAN_ID(0,1,4)        // VFD Start / Stop / External Fault command
#define AC_EJC_CAL			CAN_ID(1,1,6)        // Ejection Calibaration button pressed
#define AC_JSON_REPLY		CAN_ID(1,1,37)
#define AC_VFD_FDBK			CAN_ID(1,1,38)
#define AC_RS485_COMM_ERR	CAN_ID(0,1,48)
#define AC_VFD_EXCEPTION	CAN_ID(0,1,49)
#define AC_ESTOP_BTN		CAN_ID(1,1,51)
#define AC_MCU_RST_FB		CAN_ID(0,1,60)

/* DLC Definitions Size in Byte*/
#define DLC_ACVFDFAULT         	(3)
#define DLC_AC_JSON_REPLY		(4)
#define DLC_AC_VFD_FDBK         (5)
#define DLC_AC_RS485_COMM_ERR	(1)
#define DLC_AC_VFD_EXCEPTION	(2)
#define DLC_AC_ESTOP_BTN		(1)
/*****************************************************************************/





/************************** FP Node Definition****************************/
					/* Message ID */
#define FP_DC_PW_FB    		CAN_ID(1,1,4)        // DC power feedback
#define FP_BUTTONSCANNED	CAN_ID(1,1,5)        // Button Scanned Information
#define AUTO_MAN			CAN_ID(1,14,0)
#define FP_MOTOR_CONTROL    CAN_ID(1,14,1)        // Motor Control Flags
#define AC_PWR_STATUS		CAN_ID(1,14,2)        // AC power status and query
#define AC_E_STOP_Q			CAN_ID(1,14,3)
#define FP_JSON_REPLY		CAN_ID(1,1,36)
#define FP_ESTOP_BTN		CAN_ID(1,1,52)
#define FP_MCU_RST_FB		CAN_ID(0,1,59)

					/* DLC Definitions Size in Byte*/
#define DLC_FP_DC_PW_FB			(1)
#define DLC_FP_BUTTONSCANNED	(2)
#define DLC_AUTO_MAN         	(1)
#define DLC_FP_MOTOR_CONTROL    (1)
#define DLC_AC_PWR_STATUS		(1)
#define DLC_AC_E_STOP_Q			(1)
#define DLC_FP_JSON_REPLY		(4)
#define DLC_FP_ESTOP_BTN		(1)
/*****************************************************************************/


/************************** Common Msgs****************************/
#define ESTOP              CAN_ID(0,1,3)         	// Emergency stop VFD feedback

					/* DLC Definitions Size in Byte*/
#define DLC_ESTOP				(1)





/******************** JSON messages ******************************************/
				/* Message ID */
/*****Encoder Node****************/
#define JSON_ENC_1              CAN_ID(1,3,63) 
#define JSON_ENC_2              CAN_ID(1,3,62)
#define JSON_ENC_3              CAN_ID(1,3,61)
#define JSON_ENC_4				CAN_ID(1,3,60)
#define JSON_ENC_5				CAN_ID(1,3,59)
#define JSON_ENC_6 				CAN_ID(1,3,58)
#define JSON_ENC_7				CAN_ID(1,3,57)
#define JSON_ENC_8				CAN_ID(1,3,56)
#define JSON_ENC_9				CAN_ID(1,3,55)

/*****Vision Node****************/
#define JSON_VS_1               CAN_ID(1,2,63)
#define JSON_VS_2               CAN_ID(1,2,62)
#define JSON_VS_3				CAN_ID(1,2,61)
#define JSON_VS_4				CAN_ID(1,2,60)
#define JSON_VS_5				CAN_ID(1,2,59)
#define JSON_VS_6				CAN_ID(1,2,58)
#define JSON_VS_7				CAN_ID(1,2,57)
#define JSON_VS_8				CAN_ID(1,2,56)
#define JSON_VS_9				CAN_ID(1,2,55)
#define JSON_VS_10				CAN_ID(1,2,54)
#define JSON_VS_11				CAN_ID(1,2,53)

/*****Weighing Node****************/
#define JSON_WG_1               CAN_ID(1,4,63)
#define JSON_WG_2				CAN_ID(1,4,62)
#define JSON_WG_3				CAN_ID(1,4,61)

/*****Ejection Node****************/
#define JSON_EJC_1              CAN_ID(1,NODE,63) // Lower to Higher adress
#define JSON_EJC_2				CAN_ID(1,NODE,62)
#define JSON_EJC_3				CAN_ID(1,NODE,60)
#define JSON_EJC_4              CAN_ID(1,NODE,61)

/*****AC Panel Node****************/
#define JSON_AC_1				CAN_ID(1,14,63)

		/* DLC definitions Size in bytes*/
/*****Encoder Node****************/
#define DLC_JSON_ENC_1          (2)
#define DLC_JSON_ENC_2			(1)
#define DLC_JSON_ENC_3          (1)
#define DLC_JSON_ENC_4			(1)
#define DLC_JSON_ENC_5			(2)
#define DLC_JSON_ENC_6			(2)
#define DLC_JSON_ENC_7          (3)
#define DLC_JSON_ENC_8	        (1)	
#define DLC_JSON_ENC_9	        (1)

/*****Vision Node****************/
#define DLC_JSON_VS_1           (1)
#define DLC_JSON_VS_2           (2)
#define DLC_JSON_VS_3			(1)
#define DLC_JSON_VS_4	        (1)
#define DLC_JSON_VS_5	        (2)
#define DLC_JSON_VS_6	        (5)
#define DLC_JSON_VS_7			(2)

/*****Weighing Node****************/
#define DLC_JSON_WG_1           (3)
#define DLC_JSON_WG_2			(4)
#define DLC_JSON_WG_3			(6)

/*****Ejector Node****************/
#define DLC_JSON_EJC_1          (1)
#define DLC_JSON_EJC_2			(1)
#define DLC_JSON_EJC_3			(5)
#define DLC_JSON_EJC_4          (1)

/*****AC Panel Node****************/
#define DLC_JSON_AC_1			(5)
/*****************************************************************************/




/* ------------------------------  ALl message datatype definitions ----------*/
/*
typedef struct data_field
{
	****** SAMc21n18a and AVR 8 Bits MCUs are little-endium type *****
	Compiler memory allocation AVRGCC and arm-none-eabi both
	
	
	uintX_t var : bitfield; ----> LSB
	-----------
	---------
	----------
	--------
	----------
	uintX_t var : bitfield; ----> MSB
}
*/



/***********************	Encoder Node messages structure *****************************/

typedef struct gc_part			//gc_part msg for test rig
{
	uint64_t  gcpart:  8;
	uint64_t  cup_trigger: 8;
}gc_part_type;

typedef struct gc_full			// gc full msg for test rig
{
	uint64_t  gcfull:  32;
	uint64_t  cup_trigger: 8;
}gc_full_type;

typedef struct Slippage
{
	
	uint64_t gc_status: 8;
	uint64_t gc_diff: 24;
	uint64_t cup_status: 8;
	uint64_t num_of_cups: 16;
}Slippage_type;

typedef struct enc_ejc_cuptilt_st // Ejection match data type
{
	uint64_t segment_no:      4;
	uint64_t ejc_no:          4;
	uint64_t gc_value:        32;
	uint64_t fruit_no:        8;
	uint64_t Cup_state:       1;
	uint64_t Cup_id:          10;
	uint64_t Lane_no:	  	  5;
}enc_ejc_cuptilt_st_type;

typedef struct cup_misbehave
{
	uint64_t Cup_id:  16;
	uint64_t lane_no: 8;
}cup_misbehave_type;

typedef struct Z_pulse_msg
{
	uint64_t state: 8;
	uint64_t Gc_diff: 16;
}Z_pulse_msg_type;

typedef struct gc_cup_trig   // Cup triggr with live offset
{
	uint64_t gc_value:    32;
	uint64_t cup_offset:  8;
}gc_cup_trig_type;

/***********************    Vision Station Node structure *******************************/

typedef struct cam_info // CAM info frame structure
{
	uint64_t gc_value:       32;
	uint64_t time_stamp_del: 32;
}caminfo_type;

typedef struct vsconv_cam_info // vision conveyor CAM info frame structure
{
	uint64_t gc_value:       32;
	uint64_t vs_gc_value:	 32;
}vsconv_cam_info_type;

/***********************   Load Cell Structure **************************************/

typedef struct wg_data // weiging Data
{
	uint64_t code:     32;
	uint64_t gc:   	   32;
}wg_data_type;

typedef struct adc_err_code // ADC Error Code
{
	uint64_t adc_id:	8;
	uint64_t err_code:  8;
}adc_err_code_type;

typedef struct wg_ping_resp  // Load Cell Responce to ping
{
	uint64_t  lane_no:     8;
	uint64_t  curr_sample: 32;
}wg_ping_rsp_type;

typedef struct wg_waveform_data
{
	uint64_t code: 32;
	uint64_t cup_id: 16;
	uint64_t window_status: 8;
	uint64_t lane_index:	8;
}wg_waveform_data_type;

/***********************   Ejection Node Structure **********************************/

typedef struct ejec_out_rng
{
	uint64_t ejector_no:	8;
	uint64_t gc_value:		32;
	uint64_t fruit_no:		8;
	uint64_t speed_flag:	1;
}ejec_out_rng_type;

typedef struct ejc_msg_fb
{
	uint64_t ejector_no: 8;
	uint64_t gc_value:   32;
	uint64_t fruit_no:	 8;
}ejc_msg_fb_type;

typedef struct ejc_action_fb
{
	uint64_t ejector_no: 6;
	uint64_t lane_no:    2;
	uint64_t gc_val:     32;
	uint64_t  fruit_no:	 8;
}ejc_action_fb_type;

typedef struct ejc_error
{
	uint64_t solenoid: 8;
	uint64_t error_code: 8;
}ejc_error_type;

/***********************   PC Node structure *******************************************/

typedef struct enable_op
{
	uint64_t en_dis_op: 8;
	uint64_t pin_no_1:	7;
	uint64_t off_st_1:	1;
	uint64_t pin_no_2:	7;
	uint64_t off_st_2:	1;
	uint64_t pin_no_3:	7;
	uint64_t off_st_3:	1;
	uint64_t pin_no_4:	7;
	uint64_t off_st_4:	1;
	uint64_t pin_no_5:	7;
	uint64_t off_st_5:	1;
	uint64_t pin_no_6:	7;
	uint64_t off_st_6:	1;
	uint64_t pin_no_7:	7;
	uint64_t off_st_7:	1;
}enable_op_type;

typedef struct vs_trig_mode // hw/sw mode frame structure
{
	uint64_t hw_sw_mode:       8;			// hw - 0, sw - 1
	uint64_t sw_mode_time:	   32;
}vs_trig_mode_type;

typedef struct ejection_fruit_info // Ejection Packet frame structure
{
	uint64_t ejector_no:  8;
	uint64_t gc_value:    32;
	uint64_t fruit_no:	  8;
}ejection_fruit_info_type;

typedef struct manual_toggle // Manually toggle the particular solenoid
{
	uint64_t  ejector_no: 6;
	uint64_t  state:      2;
}manual_toggle_type;

typedef struct inmotion_toggle
{
	uint64_t no_of_lane:  		8;
	uint64_t no_of_cups:  		16;
	uint64_t no_of_iteration: 	8;
	uint64_t seg_no:			8;
}inmotion_toggle_type;

typedef struct vfd_msg
{
	uint64_t comm_addr:			8;
	uint64_t data_addr_high:	8;
	uint64_t data_addr_low:		8;
	uint64_t data_cnt_high:		8;
	uint64_t data_cnt_low:		8;
	uint64_t msg_type:			8;
}vfd_msg_type;

/***********************   AC Panel Node Structure **********************************/

typedef struct Vfd_fault
{
	uint32_t vfd_type:		8;	// ext/int - 1/0
	uint32_t vfd_num:		8;  	// Main - 0, V-Belt - 1, Return lane - 2, Elevator - 3
	uint32_t Error_code:	8;
}vfd_fault_type;

typedef struct vfd_fdbk
{
	uint64_t result:	8;
	uint64_t data:		32;
}vfd_fdbk_type;

typedef struct vfd_exception_msg
{
	uint64_t VFD_addr: 8;
	uint64_t Exception_code: 8;
}vfd_exception_msg_type;


/***********************   Front Panel Node Structure **********************************/

typedef struct button_scanned //Button Scanned frame structure
{
	uint64_t pin_no: 8;
	uint64_t state:  8;
}button_scanned_type;

typedef struct auto_manual
{
	uint64_t status:    1;
	uint64_t query:     1;
	uint64_t ack:       1;
}auto_manual_type;

typedef struct motor_control
{
	uint64_t motor_no:  4;
	uint64_t flag:      4;
}motor_control_type;

typedef struct ac_status
{
	uint64_t status:	1;
	uint64_t query:		1;
	uint64_t ack:		1;
}ac_status_type;

/***********************   Common msgs **********************************/




/***********************  JSON Messages Structure **********************************/

typedef struct _json_reply
{
	uint64_t num_message: 	8;
	uint64_t ver:		16;
	uint64_t msg_recvd_comp_st:	8;
}json_reply_type;

/*****Encoder Node****************/
typedef struct json_enc_1_msg
{
	uint64_t mode: 8;
	uint64_t EncDir: 8;	
}json_enc_1_type;

typedef struct json_enc_7_msg
{
	uint64_t pin_no:      8;
	uint64_t lane_no:     8;
	uint64_t del_cup_pos: 8;	
}json_enc_7_type;

typedef struct json_enc_9_msg
{
	uint64_t Cuptiltpre:      8;
	uint64_t Cuptiltmtd:     8;
}json_enc_9_type;

/*****Vision Node****************/
typedef struct json_vs_5_msg
{
	uint64_t  len_no: 4;
	uint64_t  index:  4;
	uint64_t  deg:    8;
}json_vs_5_type;

typedef struct json_vs_6_msg
{
	uint64_t  column_index: 8;
	uint64_t  seq_index:    4;
	uint64_t  pin_no:       8;
	uint64_t  time:         16;
	uint64_t  state:        1;
}json_vs_6_type;

typedef struct json_vs_7_msg
{
	uint64_t  index:  8;
	uint64_t  pin_no: 8;
}json_vs_7_type;

/*****Weighing Node****************/
typedef struct json_wg_1_msg
{
	uint64_t  mode:	8;
	uint64_t  wavefrom_fb_lane: 8;
	uint64_t  cup_trigger_offset: 8;
}json_wg_1_type;

typedef struct json_wg_2_msg
{
	uint64_t cups_per_lane:	16;
	uint64_t cup_pitch:	8;
	uint64_t no_of_lanes:   8;
}json_wg_2_type;

typedef struct json_wg_3_msg
{
	uint64_t lane_index:		8;
	uint64_t pf_endpoint:		8;
	uint64_t pf_endpoint_offset:	8;
	uint64_t sampling_window_size:	8;
	uint64_t cs_pin:		8;
	uint64_t sync_pin:		8;
}json_wg_3_type;

/*****Ejection Node****************/
typedef struct json_ejc_2_msg
{
	uint64_t  solenoid_type: 8;
	uint64_t  digipot_value: 8;
}json_ejc_2_type;
typedef struct json_ejc_3_msg
{
	uint64_t  ejector:     4;
	uint64_t  pin:         8;
	uint64_t  cup_trigg_offset:  8;
	uint64_t  lane_no:     4;
	uint64_t  cup_tilt_del_gc:      16;
	uint64_t  sol_back_offset:  8;
	uint64_t  vision_del_gc: 16;
}json_ejc_3_type;

/*****AC Panel Node****************/
typedef struct _json_ac_1_msg
{
	uint64_t no_err:					1;
	uint64_t over_current:				1;
	uint64_t over_voltage:				1;
	uint64_t overheat:					1;
	uint64_t reserved1:					1;
	uint64_t overload:					1;
	uint64_t overload1:					1;
	uint64_t overload2:					1;
	uint64_t external_fault:			1;
	uint64_t accel_over_curr:			1;
	uint64_t decel_over_curr:			1;
	uint64_t op_over_curr:				1;
	uint64_t gnd_fault:					1;
	uint64_t reserved2:					1;
	uint64_t phase_loss:				1;
	uint64_t reserved3:					1;
	uint64_t auto_accel_decel_failure:	1;
	uint64_t sw_protect_en:				1;
	uint64_t pb_cpu_wr_failure:			1;
	uint64_t pb_cpu_read_failure:		1;
	uint64_t cc_oc_hw_protect_failure:	1;
	uint64_t ov_hw_protect_failure:		1;
	uint64_t gff_hw_protect_failure:	1;
	uint64_t oc_hw_protect_failure:		1;
	uint64_t u_phase_error:				1;
	uint64_t v_phase_error:				1;
	uint64_t w_phase_error:				1;
	uint64_t dcbus_error:				1;
	uint64_t overheat1:					1;
	uint64_t reserved4:					1;
	uint64_t reserved5:					1;
	uint64_t reserved6:					1;
	uint64_t aci_sig_err:				1;
	uint64_t reserved7:					1;
	uint64_t overheat_protection:		1;
}json_ac_1_msg_type;

/*********************************************************************************/


                /*  ---------  Can data frame for run time operation ----------  */
typedef union _can_frame   
{
	unsigned char data[8]; // Array for receive data from ASF4 can API
	uint64_t data_64bit;   // Received 64 bit data
	
				/* Encoder Node data field */
	uint8_t 					gc_part; 				// GC part message
	gc_part_type				gc_part_tr;				// GC part message for test rig
	uint32_t       				gc_full;				// Full GC value 
	gc_full_type				gc_full_tr;				// GC full for test rig
	uint16_t					cup_id;                 // Cup id information
	Slippage_type				Slippage_msg;
	enc_ejc_cuptilt_st_type		ejc_cuptilt_st;         // Ejection cup tilt information
	cup_misbehave_type 			cup_misbehave;          // Cup mis behave information	
	uint8_t						cup_sec;                // Cup per second info
	Z_pulse_msg_type			z_pulse_msg_check;
	uint8_t						sensor_cut;             // Current sensor position
	gc_cup_trig_type			gc_cup_trig;            // Cup trigger with live gc value

				/* Vision Station Node data field */
	caminfo_type 				caminfo;
	uint8_t						camdelayedfb;
	vsconv_cam_info_type		vsconvcaminfo;
	uint8_t						vs_cups_sec;
				/* Loadcell Node data field */
	wg_data_type				wg_data;                // Weight data
	adc_err_code_type			adc_err;                // ADC error code	
	wg_ping_rsp_type			ping_resp;              // Load Cell ping responce
	wg_waveform_data_type		wg_waveform_samples;
	
				/* Ejection Node data field */
	ejec_out_rng_type			ejc_out_range;
	uint8_t						ejc_queue_full;
	ejc_msg_fb_type				ejc_ack;                // Ejection Packet Ack
	ejc_action_fb_type			ejc_fb;	                // Ejection Feedback
	uint8_t						in_motion_toggle_stop;  // Stop inmotion toggle.
	uint8_t						ejc_gc_flush;
	
	            /* PC Node data field */
	uint8_t						debug_cmd;
	/*****Encoder Node****************/
	uint8_t						ejc_calib_en;
	
	/*****Vision Node****************/
	uint8_t						dbg_mode;               // Debug Mode
	enable_op_type				en_op;                  // Enable the operation
	uint8_t						one_shot_mode;
	uint32_t					simulated_gc;               // Dummy 32 bit global counter
	vs_trig_mode_type			vs_trig_mode;				
	
	/*****Weighing Node****************/
	uint8_t 					en_load_cell;			//Enable load cell

	/*****Ejection Node****************/
	ejection_fruit_info_type	ejcpacket;  			// Ejection Packet information
	uint8_t						en_tog_solenoid;        // Enable the toggle of solenoid
	uint8_t						tog_solenoid_op;        // Toggle Solenoid operation
	manual_toggle_type			man_toggle;             // Manual toggle the solenoids
	inmotion_toggle_type		in_motion_toggle_start; // Start inmotion toggle
	ejc_error_type			ejc_err;
	/*****AC Panel Node****************/
	vfd_msg_type				vfd_rd_wr;
	
	/*****Front Panel Node****************/
	uint8_t						twr_lamp_red;           // Tower Lamp red status
	uint8_t						twr_lamp_green;         // Tower Lamp green status
	uint8_t						twr_lamp_yellow;        // Tower Lamp yellow status
	uint8_t						en_solenoid;			// Enable the solenoid
	uint8_t						twr_lamp_buzzer;        // Tower Lamp buzzer Count
	uint32_t					rtc_msg;                // RTC message		
	
				/* AC Panel Node data field */
	vfd_fault_type			vfd_fault;
	vfd_fdbk_type			vfd_feedback;
	uint8_t					comm_error_vfd;
	vfd_exception_msg_type  vfd_exception;	

				/* Front Panel Node data field */
	uint8_t                 dc_pw_fb;
	button_scanned_type		buttonscanned; 			// Scanned button information
	auto_manual_type        auto_man;	
	motor_control_type      motor_con;
	ac_status_type			ac_pwr_status;
	uint8_t					e_stop_node;
	
				/* Common msg data field */
	uint8_t					estop_state;

				/* JSON msgs */
	uint8_t                 json_start;
	json_reply_type         json_reply;
				/* JSON for encoder node */
	json_enc_1_type         json_enc_1;
	uint8_t                 json_enc_2;
	uint8_t                 json_enc_3;
	uint8_t                 json_enc_4;
	uint16_t                json_enc_5;
	uint16_t                json_enc_6;
	json_enc_7_type         json_enc_7;
	uint8_t                 json_enc_8;
	json_enc_9_type			json_enc_9;
				/* JSON for vision station */
	uint8_t                 json_vs_1;
	uint16_t                json_vs_2;
	uint8_t                 json_vs_3;
	uint8_t                 json_vs_4;
	json_vs_5_type          json_vs_5;
	json_vs_6_type          json_vs_6;
	json_vs_7_type          json_vs_7;
	uint8_t					json_vs_8;
	uint8_t					json_vs_9;
	uint8_t					json_vs_10;
	uint16_t				json_vs_11;
				/* JSON for load cell */
	json_wg_1_type          json_wg_1;
	json_wg_2_type          json_wg_2;
	json_wg_3_type          json_wg_3;	
				/* JSON for ejection node */
	uint8_t                 json_ejc_1;
	json_ejc_2_type         json_ejc_2;
	json_ejc_3_type         json_ejc_3;
	uint8_t                 json_ejc_4;
				/* JSON for AC panel */
	json_ac_1_msg_type		json_ac_1;	
}can_frame_type;

#endif
