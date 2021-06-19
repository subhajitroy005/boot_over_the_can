#ifndef _CAN_DRIVER_H_
#define _CAN_DRIVER_H_

#include <data_type_support.h>
#include <config.h>

#ifdef LINUX // From the compiler line {for linux inclusion}
        #include <serial_drv_linux.h>
#endif

void can_init(const can_context_type * can);







#endif