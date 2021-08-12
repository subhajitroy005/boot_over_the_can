#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Default.mk)" "nbproject/Makefile-local-Default.mk"
include nbproject/Makefile-local-Default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=examples/driver_examples.c hal/src/hal_atomic.c hal/src/hal_can_async.c hal/src/hal_delay.c hal/src/hal_flash.c hal/src/hal_gpio.c hal/src/hal_init.c hal/src/hal_io.c hal/src/hal_sleep.c hal/src/hal_timer.c hal/src/hal_usart_sync.c hal/utils/src/utils_assert.c hal/utils/src/utils_event.c hal/utils/src/utils_list.c hal/utils/src/utils_syscalls.c hpl/can/hpl_can.c hpl/core/hpl_core_m0plus_base.c hpl/core/hpl_init.c hpl/divas/hpl_divas.c hpl/dmac/hpl_dmac.c hpl/gclk/hpl_gclk.c hpl/mclk/hpl_mclk.c hpl/nvmctrl/hpl_nvmctrl.c hpl/osc32kctrl/hpl_osc32kctrl.c hpl/oscctrl/hpl_oscctrl.c hpl/pm/hpl_pm.c hpl/sercom/hpl_sercom.c hpl/tc/hpl_tc.c samc21n/gcc/gcc/startup_samc21.c samc21n/gcc/system_samc21.c stdio_redirect/gcc/read.c stdio_redirect/gcc/write.c stdio_redirect/stdio_io.c main.c driver_init.c stdio_start.c atmel_start.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/examples/driver_examples.o ${OBJECTDIR}/hal/src/hal_atomic.o ${OBJECTDIR}/hal/src/hal_can_async.o ${OBJECTDIR}/hal/src/hal_delay.o ${OBJECTDIR}/hal/src/hal_flash.o ${OBJECTDIR}/hal/src/hal_gpio.o ${OBJECTDIR}/hal/src/hal_init.o ${OBJECTDIR}/hal/src/hal_io.o ${OBJECTDIR}/hal/src/hal_sleep.o ${OBJECTDIR}/hal/src/hal_timer.o ${OBJECTDIR}/hal/src/hal_usart_sync.o ${OBJECTDIR}/hal/utils/src/utils_assert.o ${OBJECTDIR}/hal/utils/src/utils_event.o ${OBJECTDIR}/hal/utils/src/utils_list.o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o ${OBJECTDIR}/hpl/can/hpl_can.o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o ${OBJECTDIR}/hpl/core/hpl_init.o ${OBJECTDIR}/hpl/divas/hpl_divas.o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o ${OBJECTDIR}/hpl/pm/hpl_pm.o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o ${OBJECTDIR}/hpl/tc/hpl_tc.o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o ${OBJECTDIR}/samc21n/gcc/system_samc21.o ${OBJECTDIR}/stdio_redirect/gcc/read.o ${OBJECTDIR}/stdio_redirect/gcc/write.o ${OBJECTDIR}/stdio_redirect/stdio_io.o ${OBJECTDIR}/main.o ${OBJECTDIR}/driver_init.o ${OBJECTDIR}/stdio_start.o ${OBJECTDIR}/atmel_start.o
POSSIBLE_DEPFILES=${OBJECTDIR}/examples/driver_examples.o.d ${OBJECTDIR}/hal/src/hal_atomic.o.d ${OBJECTDIR}/hal/src/hal_can_async.o.d ${OBJECTDIR}/hal/src/hal_delay.o.d ${OBJECTDIR}/hal/src/hal_flash.o.d ${OBJECTDIR}/hal/src/hal_gpio.o.d ${OBJECTDIR}/hal/src/hal_init.o.d ${OBJECTDIR}/hal/src/hal_io.o.d ${OBJECTDIR}/hal/src/hal_sleep.o.d ${OBJECTDIR}/hal/src/hal_timer.o.d ${OBJECTDIR}/hal/src/hal_usart_sync.o.d ${OBJECTDIR}/hal/utils/src/utils_assert.o.d ${OBJECTDIR}/hal/utils/src/utils_event.o.d ${OBJECTDIR}/hal/utils/src/utils_list.o.d ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d ${OBJECTDIR}/hpl/can/hpl_can.o.d ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d ${OBJECTDIR}/hpl/core/hpl_init.o.d ${OBJECTDIR}/hpl/divas/hpl_divas.o.d ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d ${OBJECTDIR}/hpl/pm/hpl_pm.o.d ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d ${OBJECTDIR}/hpl/tc/hpl_tc.o.d ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d ${OBJECTDIR}/samc21n/gcc/system_samc21.o.d ${OBJECTDIR}/stdio_redirect/gcc/read.o.d ${OBJECTDIR}/stdio_redirect/gcc/write.o.d ${OBJECTDIR}/stdio_redirect/stdio_io.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/driver_init.o.d ${OBJECTDIR}/stdio_start.o.d ${OBJECTDIR}/atmel_start.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/examples/driver_examples.o ${OBJECTDIR}/hal/src/hal_atomic.o ${OBJECTDIR}/hal/src/hal_can_async.o ${OBJECTDIR}/hal/src/hal_delay.o ${OBJECTDIR}/hal/src/hal_flash.o ${OBJECTDIR}/hal/src/hal_gpio.o ${OBJECTDIR}/hal/src/hal_init.o ${OBJECTDIR}/hal/src/hal_io.o ${OBJECTDIR}/hal/src/hal_sleep.o ${OBJECTDIR}/hal/src/hal_timer.o ${OBJECTDIR}/hal/src/hal_usart_sync.o ${OBJECTDIR}/hal/utils/src/utils_assert.o ${OBJECTDIR}/hal/utils/src/utils_event.o ${OBJECTDIR}/hal/utils/src/utils_list.o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o ${OBJECTDIR}/hpl/can/hpl_can.o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o ${OBJECTDIR}/hpl/core/hpl_init.o ${OBJECTDIR}/hpl/divas/hpl_divas.o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o ${OBJECTDIR}/hpl/pm/hpl_pm.o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o ${OBJECTDIR}/hpl/tc/hpl_tc.o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o ${OBJECTDIR}/samc21n/gcc/system_samc21.o ${OBJECTDIR}/stdio_redirect/gcc/read.o ${OBJECTDIR}/stdio_redirect/gcc/write.o ${OBJECTDIR}/stdio_redirect/stdio_io.o ${OBJECTDIR}/main.o ${OBJECTDIR}/driver_init.o ${OBJECTDIR}/stdio_start.o ${OBJECTDIR}/atmel_start.o

# Source Files
SOURCEFILES=examples/driver_examples.c hal/src/hal_atomic.c hal/src/hal_can_async.c hal/src/hal_delay.c hal/src/hal_flash.c hal/src/hal_gpio.c hal/src/hal_init.c hal/src/hal_io.c hal/src/hal_sleep.c hal/src/hal_timer.c hal/src/hal_usart_sync.c hal/utils/src/utils_assert.c hal/utils/src/utils_event.c hal/utils/src/utils_list.c hal/utils/src/utils_syscalls.c hpl/can/hpl_can.c hpl/core/hpl_core_m0plus_base.c hpl/core/hpl_init.c hpl/divas/hpl_divas.c hpl/dmac/hpl_dmac.c hpl/gclk/hpl_gclk.c hpl/mclk/hpl_mclk.c hpl/nvmctrl/hpl_nvmctrl.c hpl/osc32kctrl/hpl_osc32kctrl.c hpl/oscctrl/hpl_oscctrl.c hpl/pm/hpl_pm.c hpl/sercom/hpl_sercom.c hpl/tc/hpl_tc.c samc21n/gcc/gcc/startup_samc21.c samc21n/gcc/system_samc21.c stdio_redirect/gcc/read.c stdio_redirect/gcc/write.c stdio_redirect/stdio_io.c main.c driver_init.c stdio_start.c atmel_start.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${DFP_DIR}/samc21n/include"  -I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Default.mk dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=SAMC21N18A
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/flags/Default/abfcc0cef848de14cc97269099fe6a6cfb6c2414 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/flags/Default/2dc0d949f45112f11d4e7fc7723825b04c63eaf1 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_can_async.o: hal/src/hal_can_async.c  .generated_files/flags/Default/df01ee47392352cf095ac822d87e44e2a8e5b0cf .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_can_async.o.d" -o ${OBJECTDIR}/hal/src/hal_can_async.o hal/src/hal_can_async.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/flags/Default/ddefc9d3437c6ac2f6eb109ef8b3a41fd3a955ac .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_flash.o: hal/src/hal_flash.c  .generated_files/flags/Default/310ffa20ed9eea8a17b35e46767ea28622fa1696 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_flash.o.d" -o ${OBJECTDIR}/hal/src/hal_flash.o hal/src/hal_flash.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/flags/Default/cc83a3f1b52243bb118fec250883294ec561d847 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/flags/Default/f9d3b98284dfb40f6d303509f8d3e9229ba521b0 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/flags/Default/89b081f5529d12a205b96807028b2edf9ccc8ab3 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/flags/Default/76c51eb24b8f709d6fd8905b9b77e423c51205e7 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_timer.o: hal/src/hal_timer.c  .generated_files/flags/Default/412b06102c781068c765aa1d42a6077f5cc525e1 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_timer.o.d" -o ${OBJECTDIR}/hal/src/hal_timer.o hal/src/hal_timer.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/flags/Default/71b6dd25e5080f8f19519d71244b132f2f31d1a1 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/flags/Default/10692960bee10b2494005c0b94a3d20d94ca53dd .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/flags/Default/c9b9f7acc45c13632231d51e0531598fb3f13849 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/flags/Default/28039f57e93dcb5fb3413fad04a06ac3a4dca378 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/flags/Default/4217838783d38872af56f8b88a2cefab4a28a786 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/can/hpl_can.o: hpl/can/hpl_can.c  .generated_files/flags/Default/5e5498c00a507324c68e9b25a235ea3432caa106 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/can" 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o.d 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/can/hpl_can.o.d" -o ${OBJECTDIR}/hpl/can/hpl_can.o hpl/can/hpl_can.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o: hpl/core/hpl_core_m0plus_base.c  .generated_files/flags/Default/eebc28a99e1051dc70b30d8e5657b0b64bedc1d3 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o hpl/core/hpl_core_m0plus_base.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/flags/Default/8fd00fb463b85ab070bf15085076bcc5180cf497 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/divas/hpl_divas.o: hpl/divas/hpl_divas.c  .generated_files/flags/Default/5291b96459a6f9f4dc4474e4881526598c37fdfb .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/divas" 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o.d 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/divas/hpl_divas.o.d" -o ${OBJECTDIR}/hpl/divas/hpl_divas.o hpl/divas/hpl_divas.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/flags/Default/6c62713113c71c633ccfb053a3b8badccd8f1947 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/flags/Default/f287cb0e767be73f0208ef6536d3c0af1578c176 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/flags/Default/309f07741f47f5f08c7386a99f532a2ea4ef1eaa .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o: hpl/nvmctrl/hpl_nvmctrl.c  .generated_files/flags/Default/5cae99319ba77904ffee233b061fe119d4a17fe9 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/nvmctrl" 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" -o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o hpl/nvmctrl/hpl_nvmctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/flags/Default/c73ee4f525cd21bd3497c1cca1a31c3bf99a3e1d .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/flags/Default/8ae20d243f06b23e27489d68459e6a28533a2327 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/flags/Default/df89bdfbb52524b2e9112a71e4b6dd0db3285de6 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/flags/Default/af6d477feafff27bc1ab1bba3e676a26a4b6b8e4 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/tc/hpl_tc.o: hpl/tc/hpl_tc.c  .generated_files/flags/Default/4e02a297d165e2fb83f73657105e6b5a16a0b09 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/tc" 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o.d 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/tc/hpl_tc.o.d" -o ${OBJECTDIR}/hpl/tc/hpl_tc.o hpl/tc/hpl_tc.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o: samc21n/gcc/gcc/startup_samc21.c  .generated_files/flags/Default/305f597fa598554484d15824f97897ad7a635bd5 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o samc21n/gcc/gcc/startup_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/system_samc21.o: samc21n/gcc/system_samc21.c  .generated_files/flags/Default/6e08f1b99ce65897793499080e5607bbabe57521 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/system_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/system_samc21.o samc21n/gcc/system_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/gcc/read.o: stdio_redirect/gcc/read.c  .generated_files/flags/Default/fafed399c03f0cad8e3fc80e31d3643f819d1f34 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/stdio_redirect/gcc" 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/read.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/gcc/read.o.d" -o ${OBJECTDIR}/stdio_redirect/gcc/read.o stdio_redirect/gcc/read.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/gcc/write.o: stdio_redirect/gcc/write.c  .generated_files/flags/Default/aed392579a040df9797fe469dd35fdfb31e21400 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/stdio_redirect/gcc" 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/write.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/gcc/write.o.d" -o ${OBJECTDIR}/stdio_redirect/gcc/write.o stdio_redirect/gcc/write.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/stdio_io.o: stdio_redirect/stdio_io.c  .generated_files/flags/Default/b855f748ccdd80fa96f97c6a758664a300686f1f .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/stdio_redirect" 
	@${RM} ${OBJECTDIR}/stdio_redirect/stdio_io.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/stdio_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/stdio_io.o.d" -o ${OBJECTDIR}/stdio_redirect/stdio_io.o stdio_redirect/stdio_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/8536726aeae0247893cad2a208bffe9d67253890 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/flags/Default/37fff699d3c6da771b3545c6c62cf71a7cfd4d24 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_start.o: stdio_start.c  .generated_files/flags/Default/724f9b392017f414ba2b02147b89e36f566e57ad .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/stdio_start.o.d 
	@${RM} ${OBJECTDIR}/stdio_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_start.o.d" -o ${OBJECTDIR}/stdio_start.o stdio_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/3c6762ef0cc992e7a75cee17e15f3e5b5f183f0c .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/flags/Default/a8e5c43c4110324e820f72e3217f338d4eb1f47a .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/flags/Default/767391d13978f58f1ed2b1e7063853c040e97b9a .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_can_async.o: hal/src/hal_can_async.c  .generated_files/flags/Default/d415c0bea64cb0290e46739c38f0a70579a1a8ca .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_can_async.o.d" -o ${OBJECTDIR}/hal/src/hal_can_async.o hal/src/hal_can_async.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/flags/Default/416af307575ca905a193f465d84fc0c829dd1bbd .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_flash.o: hal/src/hal_flash.c  .generated_files/flags/Default/8f348d7e9dc6ea8a0251d2fb2b2d81feba833df0 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_flash.o.d" -o ${OBJECTDIR}/hal/src/hal_flash.o hal/src/hal_flash.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/flags/Default/bdd0a456e55990c872d1082ecb23ddf5aa14da9b .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/flags/Default/6c847c6a558efc64836988fabab8e094c342a37e .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/flags/Default/2c60d820a4c4773eed071b8e0afab34cb2f2c24f .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/flags/Default/5266529e88499bbefa7e51a265e6dae2874742a4 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_timer.o: hal/src/hal_timer.c  .generated_files/flags/Default/ef1912d08fe3f799641e556b355c112732236bc4 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_timer.o.d" -o ${OBJECTDIR}/hal/src/hal_timer.o hal/src/hal_timer.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/flags/Default/6d4c1d522022ca916e719729198646ed38fb9f6a .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/flags/Default/1d55fe809ac3dfe4edc46e1fe813bf79f4fad4c4 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/flags/Default/636ef94c25113758087c91ddd2b9975cd7d0bef9 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/flags/Default/286e1972a560fa041aeac37756dc1664d46f5a2c .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/flags/Default/a4f683c3053ceb436edd3813f461221876af7770 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/can/hpl_can.o: hpl/can/hpl_can.c  .generated_files/flags/Default/46441c170d703588a8cbf11856eff065c47e4b97 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/can" 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o.d 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/can/hpl_can.o.d" -o ${OBJECTDIR}/hpl/can/hpl_can.o hpl/can/hpl_can.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o: hpl/core/hpl_core_m0plus_base.c  .generated_files/flags/Default/e43a7970e0b0c32156bfa331be563482bf41d5bc .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o hpl/core/hpl_core_m0plus_base.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/flags/Default/756c41cbc353251b5ab506b7ad56b920c2090877 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/divas/hpl_divas.o: hpl/divas/hpl_divas.c  .generated_files/flags/Default/3c929e3c96835d4d8afa36cb9ce3cb24fcf31c4a .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/divas" 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o.d 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/divas/hpl_divas.o.d" -o ${OBJECTDIR}/hpl/divas/hpl_divas.o hpl/divas/hpl_divas.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/flags/Default/17172f5c137d1d213d556bbd7f07e1e3d00908d7 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/flags/Default/45173b9c9b4f9486f04e6c6cddd9539e3a4d534d .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/flags/Default/52147e29b0827b7b77dc6e1d7ed26aa3429e5f3b .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o: hpl/nvmctrl/hpl_nvmctrl.c  .generated_files/flags/Default/5d24439ac7a9fed925f01504291ada1ed9ad3fdd .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/nvmctrl" 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" -o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o hpl/nvmctrl/hpl_nvmctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/flags/Default/43ab26755a6485a55d04c419bc4e1ccca9397c35 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/flags/Default/6e7eaffdbad48188558ba146d0c2d7d4876faac3 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/flags/Default/df97d41876124ab1fe261b642b1a9b25dc707e16 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/flags/Default/54d96922c348d18ad5c20c582e9200ae29ea217d .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/tc/hpl_tc.o: hpl/tc/hpl_tc.c  .generated_files/flags/Default/342c1f48507002c672ad219fd8033198f3766876 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/tc" 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o.d 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/tc/hpl_tc.o.d" -o ${OBJECTDIR}/hpl/tc/hpl_tc.o hpl/tc/hpl_tc.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o: samc21n/gcc/gcc/startup_samc21.c  .generated_files/flags/Default/205ce8be5a3eea17fcebc68c67a4087d7dcf6e5 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o samc21n/gcc/gcc/startup_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/system_samc21.o: samc21n/gcc/system_samc21.c  .generated_files/flags/Default/59158e045fefe421a6ed209060a27f4abc9a3813 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/system_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/system_samc21.o samc21n/gcc/system_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/gcc/read.o: stdio_redirect/gcc/read.c  .generated_files/flags/Default/85074c4a3e6ae91627eee17fee6295638214292 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/stdio_redirect/gcc" 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/read.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/gcc/read.o.d" -o ${OBJECTDIR}/stdio_redirect/gcc/read.o stdio_redirect/gcc/read.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/gcc/write.o: stdio_redirect/gcc/write.c  .generated_files/flags/Default/9b45a30b7654a5786562b12f93985a6b60361dcf .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/stdio_redirect/gcc" 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/write.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/gcc/write.o.d" -o ${OBJECTDIR}/stdio_redirect/gcc/write.o stdio_redirect/gcc/write.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/stdio_io.o: stdio_redirect/stdio_io.c  .generated_files/flags/Default/a77054bedaadf1f30f2bb6bd53de3b923a69a817 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/stdio_redirect" 
	@${RM} ${OBJECTDIR}/stdio_redirect/stdio_io.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/stdio_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/stdio_io.o.d" -o ${OBJECTDIR}/stdio_redirect/stdio_io.o stdio_redirect/stdio_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/743708edc14517e81f534b0f5d5d6b2377aeb5d8 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/flags/Default/1ef6dc067774b19175a0b5f9a8bfc15922025f7 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_start.o: stdio_start.c  .generated_files/flags/Default/8988e9a48df783515efc9b7cbb936c8d653ff4c8 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/stdio_start.o.d 
	@${RM} ${OBJECTDIR}/stdio_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_start.o.d" -o ${OBJECTDIR}/stdio_start.o stdio_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/6796c918a832424a3b54144154343ecdecc17f97 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus   -gdwarf-2  -D__$(MP_PROCESSOR_OPTION)__    -mthumb --specs=nosys.specs -Wl,-Map="dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1  -L"samc21n/gcc/gcc" -Wl,--gc-sections   -T"samc21n/gcc/gcc/samc21n18a_flash.ld" 
	
	
	
	
	
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus  -D__$(MP_PROCESSOR_OPTION)__    -mthumb --specs=nosys.specs -Wl,-Map="dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)  -L"samc21n/gcc/gcc" -Wl,--gc-sections   -T"samc21n/gcc/gcc/samc21n18a_flash.ld" 
	
	${MP_CC_DIR}/arm-none-eabi-objcopy -O ihex -R .eeprom -R .fuse -R .lock -R .signature "dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.hex"
	
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Default
	${RM} -r dist/Default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
