#include "time_drv_linux.h"

clock_t millis(void)
{
        return clock();
}