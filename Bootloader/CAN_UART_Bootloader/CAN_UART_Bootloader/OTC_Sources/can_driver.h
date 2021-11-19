#ifndef _CAN_DRIVER_H_
#define _CAN_DRIVER_H_

#include <data_type_support.h>
#include <utility_support.h>
#include <debug_macros.h>
#include <atmel_start.h>
#include <config.h>		// For configuration
#include <peripheral_clk_config.h>
#include <zen_can_api.h>
#include <zen_message_id.h>

void	can_init(struct can_async_descriptor * descr, void *const hw , FUNC_PTR cb , unsigned int baud_rate);
void	can_write(can_context_type * can);
int	can_read(can_context_type * can);





#endif