#include "can_driver.h"
void can_init(const can_context_type * can)
{
        /*______ Serial section Init________*/
        #if SERIAL_IGNORE
                printf("Serial Port init ignore\n\r");
        #else
                config_serial_port(can->can_serial_port); // If the seril init not enabled in debug
        #endif
}