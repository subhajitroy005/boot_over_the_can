/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */

#include "driver_init.h"
#include <peripheral_clk_config.h>
#include <utils.h>
#include <hal_init.h>

struct can_async_descriptor CAN_1;

struct usart_sync_descriptor USART_0;

void USART_0_PORT_init(void)
{

	gpio_set_pin_function(PC12, PINMUX_PC12C_SERCOM7_PAD0);

	gpio_set_pin_function(PC15, PINMUX_PC15C_SERCOM7_PAD3);
}

void USART_0_CLOCK_init(void)
{
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM7_GCLK_ID_CORE, CONF_GCLK_SERCOM7_CORE_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
	hri_gclk_write_PCHCTRL_reg(GCLK, SERCOM7_GCLK_ID_SLOW, CONF_GCLK_SERCOM7_SLOW_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));

	hri_mclk_set_APBDMASK_SERCOM7_bit(MCLK);
}

void USART_0_init(void)
{
	USART_0_CLOCK_init();
	usart_sync_init(&USART_0, SERCOM7, (void *)NULL);
	USART_0_PORT_init();
}

void CAN_1_PORT_init(void)
{

	gpio_set_pin_function(PB15, PINMUX_PB15G_CAN1_RX);

	gpio_set_pin_function(PB14, PINMUX_PB14G_CAN1_TX);
}
/**
 * \brief CAN initialization function
 *
 * Enables CAN peripheral, clocks and initializes CAN driver
 */
void CAN_1_init(void)
{
	hri_mclk_set_AHBMASK_CAN1_bit(MCLK);
	hri_gclk_write_PCHCTRL_reg(GCLK, CAN1_GCLK_ID, CONF_GCLK_CAN1_SRC | (1 << GCLK_PCHCTRL_CHEN_Pos));
	can_async_init(&CAN_1, CAN1);
	CAN_1_PORT_init();
}

void system_init(void)
{
	init_mcu();

	USART_0_init();
	CAN_1_init();
}
