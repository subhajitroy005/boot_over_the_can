#ifndef _CAN_DRIVER_H_
#define _CAN_DRIVER_H_

#include <data_type_support.h>
#include <utility_support.h>
#include <debug_macros.h>
#include <atmel_start.h>
#include <config.h>		// For configuration



void	can_init(const can_context_type * can);
void	can_write(const can_context_type * can);
int	can_read(can_context_type * can);





#endif