/*
 * utility_support.h
 *
 * Created: 11/13/2020 1:52:36 AM
 *  Author: subha
 */ 


#ifndef UTILITY_SUPPORT_H_
#define UTILITY_SUPPORT_H_
#include <data_type_support.h>


int hexadecimalToDecimal(char hexVal[]);
void decToHexa(int64_t n , uint8_t hex_val[] , uint8_t * len);

#endif /* UTILITY_SUPPORT_H_ */