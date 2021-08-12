/*

*/

#ifndef _C_QUEUE_ARRAY_
#define _C_QUEUE_ARRAY_

#include <atmel_start.h>

#define MAX_ELEMENT 110 // Maximum element need to be sotre in array

typedef struct _queue	
		{
				struct q_element
					{
						uint32_t id;
						uint8_t data[8];
						uint8_t len;
					}can_message[MAX_ELEMENT];
				int front , rear, size;
		}queue;



/* Functions */
void init_queue(queue *q)
		{
			q->front = -1;
			q->rear = -1;
			q->size = 0;			
		}
		
void push(queue *q , uint32_t id , uint8_t * data , uint8_t len)
		{	
			if ((q->front == 0 && q->rear == (MAX_ELEMENT-1)) || (q->rear == (q->front-1)%(MAX_ELEMENT-1))) 
    				{ 
							struct io_descriptor *lv_io;
							usart_sync_get_io_descriptor(&USART_0, &lv_io);
							io_write(lv_io , (uint8_t*)"Q FULL\n\r" , 8);
       						return; 
    				} 
  
    		else if (q->front == -1) /* Insert First Element */
    				{ 
        					q->front = q->rear = 0;
							/*Insert the elements */ 
        					q->can_message[q->rear].id = id;	//insert id
							q->can_message[q->rear].len = len;	// Insert len
							int i;
							for(i=0	; i<len ; i++) // Insert the data
									{
											q->can_message[q->rear].data[i] = data[i];	
									}
							/*Increment the size */
							q->size++; 
    				} 
  
    		else if (q->rear == (MAX_ELEMENT-1) && q->front != 0) 
    				{ 
        					q->rear = 0;
							
							/*Insert the elements */
							q->can_message[q->rear].id = id;	//insert id
							q->can_message[q->rear].len = len;	// Insert len
							int i;
							for(i=0	; i<len ; i++) // Insert the data
							{
								q->can_message[q->rear].data[i] = data[i];
							}
							/*Increment the size */
							q->size++; 
    				} 
  
   			else
    				{ 
       						q->rear++; 
							 
							 /*Insert the elements */
							 q->can_message[q->rear].id = id;	//insert id
							 q->can_message[q->rear].len = len;	// Insert len
							 int i;
							 for(i=0	; i<len ; i++) // Insert the data
									{
											 q->can_message[q->rear].data[i] = data[i];
									}
							 /*Increment the size */  
							   
							q->size++;  
    				} 
			
		}

void pop(queue *q)
		{
			if (q->front == -1) 
    				{ 
        					struct io_descriptor *lv_io;
        					usart_sync_get_io_descriptor(&USART_0, &lv_io);
        					io_write(lv_io , (uint8_t*)"Q EMPT\n\r" , 8);
							return; 
    				} 
    				if (q->front == q->rear) 
    						{ 
        							q->front = -1; 
       								q->rear = -1;
									q->size = 0; 
    						} 
    				else if (q->front == (MAX_ELEMENT-1))
							{
									q->front = 0;
									q->size--;
							} 
        					 
    				else
    						{
    								q->front++;
									q->size--; 
							}
        						
		}

void peek(queue *q , uint32_t * id , uint8_t * data , uint8_t * len)
		{
				//unsigned long data = q->element[q->front];
				
				*id		= q->can_message[q->front].id;
				*len	= q->can_message[q->front].len;
				int i;
				for(i=0	; i<q->can_message[q->front].len ; i++) // Insert the data
				{
					data[i] = q->can_message[q->front].data[i]; 
				}			
		}

int size(queue *q)
		{
				return q->size;				
		}

#endif
