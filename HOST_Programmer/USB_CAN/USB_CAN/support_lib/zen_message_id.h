/*
This header file contains the CAN message Id definition of any node.
This header must be included to all the code developing for Hortisort Distributed Nodes.
Copr @ Zentron Labs 
*/

#ifndef _ZEN_MESSAGE_ID_H_
#define _ZEN_MESSAGE_ID_H_

#include <inttypes.h>

#define DATA_FRAME               1               // Data Frame identifier macro
#define REMOTE_FRAME             2               // Remote Frame identifier macro

#define EXT_ID                   1               // Extended Id macro
#define STD_ID                   0                // Standard ID macro

/****************************   Encoder Node Definition ***********************/
                  /* Message ID*/
#define GCPART                   (0x0)           // GC Part message containing the last byte
#define GCFULL                   (0x1)           // Full 32 bit counter
#define CUPID                    (0x2)           // CUP  ID for tracking one cup movement
#define CUPSEC                   (0x18C)         // Cups per second
#define WRONGSTATETRANS          (0x184)         // Wrong State Transition at the encoder
#define ZPULSEMISS               (0x185)         // Missing G Pulse
#define ESTOP                    (0x182)         // Emergency stop
#define SLIPPAGE				 (0x186)         // Encloder slippage 
#define JAM                      (0x181)         // Jam detection detected by encoder
#define EJCMATCH                 (0x187)         
#define SENSOR_CUT				 (0x18D)
#define GC_CUP_TRIG				 (0x18E)
#define CUP_MISBEHAVE			 (0x188)
#define ENC_BIN_FILL_SENSE		 (0x18F)
				/* DLC Definitions  All the DLC define size in byte */
#define DLC_GCPART               (1)           
#define DLC_GCFULL               (4)          
#define DLC_CUPID                (2)          
#define DLC_CUPSEC               (1)        
#define DLC_EJCMATCH             (6)
#define DLC_SENSOR_CUT		     (1)
#define DLC_GC_CUP_TRIG			 (5)
#define DLC_CUP_MISBEHAVE		 (1)
/*****************************************************************************/




/*******************   Vision Station Node Definition ************************/
					/*Message ID*/ 
#define CAMINFO 				 (0x180)        // Camera feedback [Position info + Camera feedback]
                    /*DLC Definitions Size in bytes*/
#define DLC_CAMINFO				 (8)
/*****************************************************************************/




/************************** VFD-FP Node Definition****************************/
					/* Message ID */
#define DC_PW_FB     			 (0x190)        // DC power feedback
#define VFDFAULT                 (0x183)        // VFD Start / Stop / External Fault command  
#define BUTTONSCANNED			 (0x191)        // Button Scanned Information
#define FP_EJC_CAL				 (0x1A6)        // Ejection Calibaration button pressed
					/* DLC Definitions Size in Byte*/
#define DLC_DC_PW_FB			 (1)
#define DLC_BUTTONSCANNED		 (2)
/*****************************************************************************/




/******************* PC  Node Definition *************************************/
					/* Message ID*/
/*Messages for Encoder Node****************/
#define ENC_START				 (0x300) 
#define ENC_STOP				 (0x301)
#define ENC_RST					 (0x302)
#define ENC_INIT				 (0x303)
#define ENC_CLEAR				 (0x304)
#define EJC_CAL_EN				 (0x305)
/*Messeges for Front Panel*****************/
#define PCSTATUS_TWR			 (0x286)
#define PCSTATUS_TWG			 (0x287)
#define PCSTATUS_TWY			 (0x288)
#define PCSTATUS_SE    			 (0x289)
#define PCSTATUS_DC_PW_Q		 (0x28A)
/*Messages for Loadcell********************/
#define LC_START				 (0x100)
#define LC_STOP					 (0x101)
#define LC_RST					 (0x102)
#define LC_INIT					 (0x103)
#define LC_CLEAR				 (0x104)
#define LC_ENABLE				 (0x107)
#define LC_PING                  (0x106)
/*Messages for Ejection Nodes**************/
#define EJC_START_1				 (0x200)
#define EJC_START_2				 (0x201)
#define EJC_START_3				 (0x202)
#define EJC_START_4				 (0x203)

#define EJC_STOP_1               (0x204)
#define EJC_STOP_2				 (0x205)
#define EJC_STOP_3				 (0x206)
#define EJC_STOP_4				 (0x207)

#define EJC_RST_1				 (0x208)
#define EJC_RST_2				 (0x209)
#define EJC_RST_3				 (0x20A)
#define EJC_RST_4				 (0x20B)

#define EJC_CLEAR_1				 (0x20C)				 
#define EJC_CLEAR_2				 (0x20D)		
#define EJC_CLEAR_3				 (0x20E)	
#define EJC_CLEAR_4				 (0x20F)

#define EJC_INIT_1				 (0x210)
#define EJC_INIT_2				 (0x211)
#define EJC_INIT_3				 (0x212)
#define EJC_INIT_4				 (0x213)

#define EJCPACKET_1				 (0x214)         // Ejection Packet for Ejection Node 1
#define EJCPACKET_2				 (0x215)	     // Ejection Packet for Ejection Node 2
#define EJCPACKET_3				 (0x216)	     // Ejection Packet for Ejection Node 3
#define EJCPACKET_4				 (0x217)         // Ejection Packet for Ejection Node 4

#define TOG_SOLENOID_EN_1		 (0x218)
#define TOG_SOLENOID_EN_2		 (0x219)
#define TOG_SOLENOID_EN_3		 (0x21A)
#define TOG_SOLENOID_EN_4		 (0x21B)

#define TOG_SOLENOID_OP_1		 (0x21C)
#define TOG_SOLENOID_OP_2		 (0x21D)
#define TOG_SOLENOID_OP_3		 (0x21E)
#define TOG_SOLENOID_OP_4	     (0x21F)

#define TOG_MAN_1				 (0x220)
#define TOG_MAN_2				 (0x221)
#define TOG_MAN_3				 (0x222)
#define TOG_MAN_4				 (0x223)

#define BACK_SOLENOID			 (0x224)
/*Mesages for Vision Station**************/
#define VS_START 				 (0x80)
#define VS_STOP					 (0x81)
#define VS_RST					 (0x82)
#define VS_INIT					 (0x83)
#define VS_CLEAR				 (0x84)
#define DBG_MODE				 (0x85)
#define CLEAR_SEQ				 (0x86)
#define EN_OP					 (0x87)
#define ONE_SHOT				 (0x88)
#define DUMMY_ENC				 (0x89)
/*Messages for all node [Common]**********/
#define RTC_MSG					 (0x8)
				/* DLC Definitions Size in Byte*/
#define DLC_PCSTATUS_TWR	     (1)
#define DLC_PCSTATUS_TWG         (1)
#define DLC_PCSTATUS_TWY         (1)
#define DLC_PCSTATUS_SE		     (1)
#define DLC_EJCPACKET            (5)
#define DLC_TOG_SOLENOID_EN		 (1)
#define DLC_TOG_SOLENOID_OP      (1)
#define DLC_TOG_MAN              (1)
#define DLC_DBG_MODE             (1)
#define DLC_EN_OP                (1)
#define DLC_DUMMY_ENC            (4)
#define DLC_LC_ENABLE            (1)
#define DLC_RTC_MSG              (4)
/*****************************************************************************/




/******************* Ejection Node Definition ********************************/
                 /* Message ID */			   
#define EJC_OUT_GC_1             (0x192)         // The GC is out of range 
#define EJC_OUT_GC_2             (0x193)
#define EJC_OUT_GC_3             (0x194)
#define EJC_OUT_GC_4             (0x195)

#define EJC_GC_FLUSH_1           (0x196)         // The wrong GC has flushed
#define EJC_GC_FLUSH_2           (0x197)
#define EJC_GC_FLUSH_3           (0x198)
#define EJC_GC_FLUSH_4           (0x199)

#define EJC_QUEUE_FULL_1         (0x19A)         // Queue Full warning
#define EJC_QUEUE_FULL_2         (0x19B)
#define EJC_QUEUE_FULL_3         (0x19C)
#define EJC_QUEUE_FULL_4         (0x19D)
 
#define EJCPACKET_ACK_1          (0x1A2)         // Ejection Packet Ack
#define EJCPACKET_ACK_2          (0x1A3)
#define EJCPACKET_ACK_3          (0x1A4)
#define EJCPACKET_ACK_4          (0x1A5)

#define EJC_FB_1                 (0x1A7)           // Ejecton Feedback
#define EJC_FB_2				 (0x1A8)
#define EJC_FB_3             	 (0x1A9)
#define EJC_FB_4                 (0x1AA)

#define EJC_BIN_FILL_SENSE_1     (0x19E)         // Binfill Sensor Data
#define EJC_BIN_FILL_SENSE_2     (0x19F)
#define EJC_BIN_FILL_SENSE_3	 (0x1A0)
#define EJC_BIN_FILL_SENSE_4	 (0x1A1)
                  /*DLC Definitions size in Byte*/
#define DLC_EJC_OUT_GC           (1)
#define DLC_EJC_GC_FLUSH         (1)
#define DLC_EJC_QUEUE_FULL       (1)
#define DLC_EJCPACKET_ACK		 (5) // Ejection Packet Ack
#define DLC_EJC_FB               (5) // Ejection Action Feedback
/*****************************************************************************/




/******************* Loadcell Node Definition ********************************/
				/* Message ID */
#define PINGRSP                  (0x189)              
#define WGHDT                    (0x18A)
#define ADCE                     (0x18B)
				/* DLC Definition Size in Byte */
#define DLC_PINGRSP              (5)                    
#define DLC_WGHDT                (8)
#define DLC_ADCE                 (2)
/*****************************************************************************/




/******************* Common for all Node *************************************/
#define INIT                     (0x8)
#define CLR_VAR                  (0x7)
#define RST                      (0x6)
#define SOFT_START               (0x9)
#define SOFT_STOP                (0xA)
/*****************************************************************************/




/******************** JSON messages ******************************************/
				/* Message ID */
#define JSON_ENC_1               (0x37F)
#define JSON_ENC_2               (0x37E)
#define JSON_ENC_3               (0x37D)
#define JSON_ENC_4				 (0x37C)
#define JSON_ENC_5				 (0x37B)
#define JSON_ENC_6 				 (0x37A)
#define JSON_ENC_7				 (0x379)
#define JSON_ENC_8				 (0x378)

#define JSON_EJC_1_1             (0x27C) // Lower to Higher adress
#define JSON_EJC_1_2			 (0x27D)
#define JSON_EJC_1_3	     	 (0x27E)
#define JSON_EJC_1_4			 (0x27F)

#define JSON_EJC_2_1			 (0x278)
#define JSON_EJC_2_2			 (0x279)
#define JSON_EJC_2_3			 (0x27A)
#define JSON_EJC_2_4			 (0x27B)

#define JSON_EJC_3_1			 (0x274)
#define JSON_EJC_3_2			 (0x275)
#define JSON_EJC_3_3			 (0x276)
#define JSON_EJC_3_4			 (0x277)
/*
#define JSON_FP_1                (0x2FF)
#define JSON_FP_2				 (0x2FE)
#define JSON_FP_3				 (0x2FD)
#define JSON_FP_4				 (0x2FC)
#define JSON_FP_5				 (0x2FB)
#define JSON_FP_6				 (0x2FA)
*/

#define JSON_VS_1                (0xFF)
#define JSON_VS_2                (0xFE)
#define JSON_VS_3				 (0xFD)
#define JSON_VS_4				 (0xFC)
#define JSON_VS_5				 (0xFB)
#define JSON_VS_6				 (0xFA)
#define JSON_VS_7				 (0xF9)

#define JSON_WG_1                (0x17F)
#define JSON_WG_2				 (0x17E)
#define JSON_WG_3				 (0x17D)
				/* DLC definitions Size in byte 8*/
#define DLC_JSON_ENC_1           (4)
#define DLC_JSON_ENC_2			 (2)
#define DLC_JSON_ENC_3           (1)
#define DLC_JSON_ENC_4			 (1)
#define DLC_JSON_ENC_5			 (1)
#define DLC_JSON_ENC_6			 (2)
#define DLC_JSON_ENC_7           (3)
#define DLC_JSON_ENC_8	         (1)	

#define DLC_JSON_EJC_1           (1)
#define DLC_JSON_EJC_2		     (1)
#define DLC_JSON_EJC_3		     (5)

/*
#define DLC_JSON_FP_1            (1)
#define DLC_JSON_FP_2		     (4)
#define DLC_JSON_FP_3			 (1)
#define DLC_JSON_FP_4			 (1)
#define DLC_JSON_FP_5			 (1)
#define DLC_JSON_FP_6			 (1)
*/

#define DLC_JSON_VS_1            (1)
#define DLC_JSON_VS_2            (2)
#define DLC_JSON_VS_3		     (1)
#define DLC_JSON_VS_4			 (1)
#define DLC_JSON_VS_5			 (2)
#define DLC_JSON_VS_6			 (5)
#define DLC_JSON_VS_7			 (2)

#define DLC_JSON_WG_1            (2)
#define DLC_JSON_WG_2		     (2)
#define DLC_JSON_WG_3		     (7)
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

typedef struct ejection_mismatch // Ejection match data type
{
	uint64_t segment_no:      4;
	uint64_t ejc_no:          4;
	uint64_t gc_value:        32;
	uint64_t expected_state:  1;
	uint64_t result_state:    1;	
}ejection_mismatch_type; 

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
	/*
	uint64_t camera_state:   8;
	uint64_t time_stamp_del: 16;
	uint64_t seq_index:      8;
	*/
}caminfo_type;


/***********************   Front Panel Node Structure **********************************/

typedef struct button_scanned //Button Scanned frame structure
{
	uint64_t pin_no: 8;
	uint64_t state:  8;
}button_scanned_type;


/***********************   PC Node tructure *******************************************/

typedef struct ejection_packet // Ejection Packet frame structure
{
	uint64_t ejector_no:  8;
	uint64_t gc_value:    32;
}ejection_packet_type;

typedef struct manual_toggle // Manually toggle the particular solenoid
{
	uint64_t  ejector_no: 6;
	uint64_t  state:      2;
}manual_toggle_type;	


/***********************   Load Cell Structure **************************************/

typedef struct lc_ping_resp  // Load Cell Responce to ping 
{
	uint32_t  lane_no:     8;
	uint32_t  curr_sample: 32;
}lc_ping_rsp_type;

typedef struct wg_data // weiging Data
{
	uint32_t code:     32;
	uint32_t gc:   	   32;
	
}wg_data_type;

typedef struct adc_err_code // ADC Error Code
{
	uint64_t adc_id:	8;
	uint64_t err_code:  8;
}adc_err_code_type;


/***********************   Ejection Node Structure **********************************/

typedef struct ejection_feedback_msg
{
	uint64_t ejector_no: 6; 
	uint64_t lane_no:    2;
	uint64_t gc_val:     32;
}ejc_fb_type;

typedef struct ejc_pack_ack
{
	uint64_t ejector_no: 8;
	uint64_t gc_value:   32;
}ejc_pack_ack_type;


/***********************  JSON Messages Structure **********************************/

typedef struct json_enc_7_msg
{
	uint64_t pin_no:      8;
	uint64_t lane_no:     8;
	uint64_t del_cup_pos: 8;	
}json_enc_7_type;

typedef struct json_ejc_3_msg
{
	uint64_t  ejector:     4;
	uint64_t  pin:         8;
	uint64_t  cup_offset:  8;
	uint64_t  lane_no:     4;
	uint64_t  del_gc:      16;
}json_ejc_3_type;

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

typedef struct json_wg_3_msg
{
	uint32_t id:        8;
    uint32_t start:     8;
    uint32_t stop:      8;	
	uint32_t cs_pin:    8;
	uint32_t filter_fs: 16;
	uint32_t sync_pin:  8;
}json_wg_3_type;

                /*  ---------  Can data frame for run time operation ----------  */
typedef union _can_frame   
{
	unsigned char data[8]; // Array for receive data from ASF4 can API
	uint64_t data_64bit;   // Received 64 bit data
				/* Encoder Node data field */
	uint8_t 			    gc_part; 				// GC part message
	uint32_t       			gc_full;				// Full GC value 
	uint16_t                cup_id;                 // Cup id information
	uint8_t                 cup_sec;                // Cup per second info
	ejection_mismatch_type  ejc_mismatch;           // Ejection match information
	uint8_t                 sensor_cut;             // Current sensor position
	gc_cup_trig_type        gc_cup_trig;            // Cup trigger with live gc value
	uint8_t                 cup_misbehave;          // Cup mis behave information
				/* Vision Station Node data field */
	caminfo_type 			caminfo; 				// CAMINFO frame
				/* Front Panel Node data field */
	button_scanned_type	    buttonscanned; 			// Scanned button information
	uint8_t                 dc_pw_fb;
	            /* PC Node data field */
	
	uint8_t                 twr_lamp_red;           // Tower Lamp red status
	uint8_t                 twr_lamp_green;         // Tower Lamp green status 
	uint8_t                 twr_lamp_yellow;        // Tower Lamp yellow status
	uint8_t                 en_solenoid;			// Enable the solenoid
	ejection_packet_type	ejcpacket;  			// Ejection Packet information
	uint8_t                 en_tog_solenoid;        // Enable the toggle of solenoid
	uint8_t                 tog_solenoid_op;        // Toggle Solenoid operation
	manual_toggle_type      man_toggle;             // Manual toggle the solenoids
	uint8_t                 dbg_mode;               // Debug Mode
	uint8_t                 en_op;                  // Enable the operation
	uint32_t                dummy_gc;               // Dummy 32 bit global counter
	uint8_t 				en_load_cell;			//Enable load cell	
	uint32_t                rtc_msg;                // RTC message
				/* Loadcell Node data field */
	lc_ping_rsp_type        ping_resp;              // Load Cell ping responce
	wg_data_type            wg_data;                // Weight data    
	adc_err_code_type       adc_err;                // ADC error code
				/* Ejection Node data field */
	uint8_t                 ejc_out_range;
	uint8_t                 ejc_gc_flush;
	uint8_t                 ejc_queue_full;
	ejc_fb_type             ejc_fb;	                // Ejection Feedback
	ejc_pack_ack_type		ejc_ack;                // Ejection Packet Ack

				/* JSON for encoder node */
	uint32_t                json_enc_1;
	uint16_t                json_enc_2;
	uint8_t                 json_enc_3;
	uint8_t                 json_enc_4;
	uint8_t                 json_enc_5;
	uint16_t                json_enc_6;
	json_enc_7_type         json_enc_7;
	uint8_t                 json_enc_8;
				/* JSON for ejection node */
	uint8_t                 json_ejc_1;
	uint8_t                 json_ejc_2;
	json_ejc_3_type         json_ejc_3;
				/* JSON for vision station */
	uint8_t                 json_vs_1;
	uint16_t                json_vs_2;
	uint8_t                 json_vs_3;
	uint8_t                 json_vs_4;
	json_vs_5_type          json_vs_5;
	json_vs_6_type          json_vs_6;
	json_vs_7_type          json_vs_7;
				/* JSON for load cell */
	uint16_t                json_wg_1;
	uint16_t                json_wg_2;
	json_wg_3_type          json_wg_3;	
}can_frame_type;

#endif
