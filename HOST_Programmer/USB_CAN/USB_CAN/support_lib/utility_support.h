/*
 * utility_support.h
 *
 * Created: 11/13/2020 1:52:36 AM
 *  Author: subha
 */ 


#ifndef UTILITY_SUPPORT_H_
#define UTILITY_SUPPORT_H_




int hexadecimalToDecimal(char hexVal[])
{
	int len = strlen(hexVal);
	int base = 1;
	int dec_val = 0;
	int i;
	for (i=len-1; i>=0; i--)
	{
		if (hexVal[i]>='0' && hexVal[i]<='9')
		{
			dec_val += (hexVal[i] - 48)*base;
			base = base * 16;
		}
		else if (hexVal[i]>='A' && hexVal[i]<='F')
		{
			dec_val += (hexVal[i] - 55)*base;
			base = base*16;
		}
	}
	
	return dec_val;
}

void decToHexa(int64_t n , uint8_t hex_val[] , uint8_t * len)
{

	// counter for hexadecimal number array
	int i = 0;
	
	while(n!=0)
	{
		// temporary variable to store remainder
		int temp  = 0;
		
		// storing remainder in temp variable.
		temp = n % 16;
		
		// check if temp < 10
		if(temp < 10)
		{
			hex_val[i] = temp + 48;
			i++;
		}
		else
		{
			hex_val[i] = temp + 55;
			i++;
		}
		
		n = n/16;
	}
	
	*len = i;
}


#endif /* UTILITY_SUPPORT_H_ */