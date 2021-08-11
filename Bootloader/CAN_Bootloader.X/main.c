#include <atmel_start.h>
#include <stdint.h>
#include <string.h>

#define MAX_FLASH_PAGE_SIZE_IN_BYTE     128


#define BOOTLOADER_EVENT_PRINT_ENABLE   1


uint32_t page_size = 255;
uint16_t i;
//------------------------------------------------------------------------------------
void write_array_data_to_flash(uint8_t * data , int * length , int* abs_adress);
int get_flash_page_size();
int check_flash_data_array(uint8_t * data , int * length , int* abs_adress);







//------------------------------------------------------------------------------------

int main(void)
{
	atmel_start_init();
    printf("FLASH Write Test\n\r");
    int page_size;
    
    uint8_t src_data[200];
    int adress = 0xa400; // starting adress for write 
    
    
    for (i = 0; i < page_size; i++) {
		src_data[i] = i;
	}
	page_size = get_flash_page_size();
    printf("Page Size! %d \n\r",page_size);
    
	write_array_data_to_flash(src_data , &page_size , &adress);
    int flash_write_check_flag = check_flash_data_array(src_data , &page_size , &adress);
    
    printf("Flash Write status %d\n\r",flash_write_check_flag);
    
    
    


	
    
    
    
    
    
	while (1) {
        printf("hello\n\r");
        delay_ms(1000);
	}
}


//------------------------------------------------------------------------------------
void write_array_data_to_flash(uint8_t * data , int * page_size , int* abs_adress)
{
    //ASF 4 api for write data
    flash_write(&FLASH_0, abs_adress, data, page_size);
    
    #if BOOTLOADER_EVENT_PRINT_ENABLE
        printf("DRV: Flash Write [dec adrr] -> %d\n\r",abs_adress);
    #endif
}

int get_flash_page_size()
{
    #if BOOTLOADER_EVENT_PRINT_ENABLE
        printf("DRV: Flash Page size ask!\n\r");
    #endif
     //ASF 4 api for get the flash page size
    return flash_get_page_size(&FLASH_0);
    
    
}

int check_flash_data_array(uint8_t * data , int * length , int * abs_adress)
{
    
    
    uint8_t temp_data[MAX_FLASH_PAGE_SIZE_IN_BYTE];
    flash_read(&FLASH_0, abs_adress, temp_data, length);
    uint8_t compare = strcmp(data , temp_data);
    
    #if BOOTLOADER_EVENT_PRINT_ENABLE
        printf("DRV: Flash write check! strcmp->%d!\n\r",compare);
    #endif

    return compare ? 0 : 1; // Compare the data byte by byte if same then strcmp'll give 0
}


