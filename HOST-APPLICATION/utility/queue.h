/*	Queue header file for implementing basic queue operation in C
	Author: Subhajit Roy <subhajitroy005@gmail.com>
	Date: 10.07.2020
*/


#ifndef _C_QUEUE_H_
#define _C_QUEUE_H_ 1

#include <data_type_support.h>


/**
 * \brief Init the queue: 
 *
 * \param[queue *q]: Pinter to the queue
 */
void queue_init(queue *q); // Initialize the queue


/**
 * \brief check the queue is empty or not
 *
 * \param[queue *q]: Pinter to the queue
 * 
 * \return unsigned char: retun the head pointer 
 */
unsigned char queue_isempty(queue *q); // Check if the queuue is empty or not


/**
 * \brief Exit sequnece at filure: Basically no memory allocaation
 *
 * \param None
 */
void queue_exit(void);


/**
 * \brief check the queue is empty or not
 *
 * \param[queue *q]: Pinter to the queue
 * 
 * \return unsigned int: retun the size of queue
 */
unsigned int queue_size(queue * q);


/**
 * \brief Insert an element in queue
 *
 * \param [queue * q]: Pinter to the queue
 * \param [uint8_t * dat]: Array of unsigned char data type(String)
 */ 
void push(queue * q, uint8_t * dat);


/**
 * \brief Remove the top element fro queue
 *
 * \param [queue * q]: Pinter to the queue
 */
void pop(queue * q);


/**
 * \brief Get the top element fropn the queue
 *
 * \param [queue * q]: Pinter to the queue
 * \param [uint8_t * dat]: Array of unsigned char data type,
 * 				 to be read (String)
 */ 
void peek(queue * q , uint8_t * recv_data);













#endif
