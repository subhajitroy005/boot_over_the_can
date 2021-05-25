#include "queue.h"


void queue_init(queue *q) // Initialize the queue
{
	q->head = NULL;
	q->tail = NULL;
	q->size =0;
}


unsigned char queue_isempty(queue *q) // Check if the queuue is empty or not
{
	return q->head == NULL;
}


void queue_exit(void)
{
        printf("Queue Operation Fail...!\n\r");
}


unsigned int queue_size(queue * q)
{
	return q->size;
}


void push(queue * q, uint8_t * dat) 
{
	node * t = q->tail; // Save the last tail pointer value
	q->tail =  (node *)malloc(sizeof(node)); // Return the allocated memory pointer 
	if(q->tail == NULL){
		queue_exit();
	}
	q->tail->next = NULL; // New node next pointer set to null

	memcpy(q->tail->data , dat , strlen(dat)); // Copy the sting to node
        
	if(queue_isempty(q))
		q->head = q->tail;
	else 
		t->next = q->tail;
			
	q->size++;
}


void pop(queue * q)
{
	if(queue_isempty(q)){
        	printf("Queue is empty\n\r");
        } else {
		node * t = q->head->next;
		free(q->head); // De-allocate the memory
		q->head= t;
		q->size--;
        }	
}


void peek(queue * q , uint8_t * recv_data) //
{
	if(queue_isempty(q)){
		printf("Queue is empty\n\r");
	}
	memcpy(recv_data , q->head->data , strlen(q->head->data)); // Copy the memory from queue to passed array
}
