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
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/flags/Default/d45c870f79e05b01cc2871b4558b44e01d0794d3 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/flags/Default/7e3acc1b6f0141f02a349785ac4e543d0705c687 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_can_async.o: hal/src/hal_can_async.c  .generated_files/flags/Default/915dc65db09c3727621133d02f4763b75400251f .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_can_async.o.d" -o ${OBJECTDIR}/hal/src/hal_can_async.o hal/src/hal_can_async.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/flags/Default/be92739a0beff3d29b06ca0f4f44a9a21844326c .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_flash.o: hal/src/hal_flash.c  .generated_files/flags/Default/eda85515d5f538ca7b0333360fa88d8ca1109ea9 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_flash.o.d" -o ${OBJECTDIR}/hal/src/hal_flash.o hal/src/hal_flash.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/flags/Default/8eafc445ff2e29ec6965e6eec07c2aaf04146a12 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/flags/Default/5c868ae1b5c9baa04cd1835037d6c1b89a99823c .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/flags/Default/f1726c7a0ce3115e01750ff32f2fe70250b256a0 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/flags/Default/71779f164aaf0c9f0e90052ed47711d73a9a40ce .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_timer.o: hal/src/hal_timer.c  .generated_files/flags/Default/4d98d648023d32acf83b2986056cb382af294b20 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_timer.o.d" -o ${OBJECTDIR}/hal/src/hal_timer.o hal/src/hal_timer.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/flags/Default/55053c52ba8b56700f189d1129d9f09ab10cbd82 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/flags/Default/739abf9039c366ea5170ef926921f9739e47f18b .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/flags/Default/55e9664a5755e63ff874120d8ad2f0701ae2366b .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/flags/Default/fa6dbb1b4355e11a0e3bff6bf320427f7e7be566 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/flags/Default/547480c469538a543318dee2b0ab00b961999c23 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/can/hpl_can.o: hpl/can/hpl_can.c  .generated_files/flags/Default/5e2374d06bccccce2c6ef41f0b5f0f9a40d94f96 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/can" 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o.d 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/can/hpl_can.o.d" -o ${OBJECTDIR}/hpl/can/hpl_can.o hpl/can/hpl_can.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o: hpl/core/hpl_core_m0plus_base.c  .generated_files/flags/Default/10b194dc7c0c0777a8075077649826f804a018e6 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o hpl/core/hpl_core_m0plus_base.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/flags/Default/1f8e194bccb68297502c84f3a04e9627d815f3a4 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/divas/hpl_divas.o: hpl/divas/hpl_divas.c  .generated_files/flags/Default/e6b6c9f3e47711fbc948a072119611697cdddc34 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/divas" 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o.d 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/divas/hpl_divas.o.d" -o ${OBJECTDIR}/hpl/divas/hpl_divas.o hpl/divas/hpl_divas.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/flags/Default/98e8e433045b5c2adf9067c1c30af39dddcb7626 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/flags/Default/e0a086c4657efb6ddbe973919455ac7cc23f3c67 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/flags/Default/ec5ae9ac8ae4ca91ab29572453b29b2f75529519 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o: hpl/nvmctrl/hpl_nvmctrl.c  .generated_files/flags/Default/d4fa54d559f15afa57a4e7f442bc6b5c49ddeb37 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/nvmctrl" 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" -o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o hpl/nvmctrl/hpl_nvmctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/flags/Default/d48a571dfc0c63a5d1e4d681cbb3a512862c3db9 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/flags/Default/cbef4f4caeef7ce448b0639b79a52e12904e95ba .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/flags/Default/716bd3b6a3c7426049f907eb74d9ad9f746b179f .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/flags/Default/10c98d189421ae57bb9a7d276eff1f88be9167a8 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/tc/hpl_tc.o: hpl/tc/hpl_tc.c  .generated_files/flags/Default/1f2713edc1a4f46926459c33fe66bfb2d5b13689 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/tc" 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o.d 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/tc/hpl_tc.o.d" -o ${OBJECTDIR}/hpl/tc/hpl_tc.o hpl/tc/hpl_tc.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o: samc21n/gcc/gcc/startup_samc21.c  .generated_files/flags/Default/ae1338c1586ef58ad94b259706501e82ff7a1071 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o samc21n/gcc/gcc/startup_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/system_samc21.o: samc21n/gcc/system_samc21.c  .generated_files/flags/Default/af10703f8d7d50eb4003dff84b03c982ed4c8c55 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/system_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/system_samc21.o samc21n/gcc/system_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/gcc/read.o: stdio_redirect/gcc/read.c  .generated_files/flags/Default/19af140712080e4c25a0361a5939fd1cd28af058 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/stdio_redirect/gcc" 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/read.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/gcc/read.o.d" -o ${OBJECTDIR}/stdio_redirect/gcc/read.o stdio_redirect/gcc/read.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/gcc/write.o: stdio_redirect/gcc/write.c  .generated_files/flags/Default/6edf9e1493eee491210d655d381ca944d03dbf94 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/stdio_redirect/gcc" 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/write.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/gcc/write.o.d" -o ${OBJECTDIR}/stdio_redirect/gcc/write.o stdio_redirect/gcc/write.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/stdio_io.o: stdio_redirect/stdio_io.c  .generated_files/flags/Default/b5e4e38ac5974371deb132f4c43a8b67d08153ab .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/stdio_redirect" 
	@${RM} ${OBJECTDIR}/stdio_redirect/stdio_io.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/stdio_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/stdio_io.o.d" -o ${OBJECTDIR}/stdio_redirect/stdio_io.o stdio_redirect/stdio_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/13c4922a4dd2284a1a953e0aa5e5d760dbb4e235 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/flags/Default/2591216d6b7274b67907a78479d6f410f915b769 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_start.o: stdio_start.c  .generated_files/flags/Default/2f5cafca80e3cb1a02c840e75cad4708528d7179 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/stdio_start.o.d 
	@${RM} ${OBJECTDIR}/stdio_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_start.o.d" -o ${OBJECTDIR}/stdio_start.o stdio_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/cb74b2077a1005d0c808461768c7c0072f100cff .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/flags/Default/a2209ffa87d94f678a9c47c7fb5649ccc360485d .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/flags/Default/b59783d368eed289258c079626d857ad5b9d5f6c .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_can_async.o: hal/src/hal_can_async.c  .generated_files/flags/Default/ae777a845eedd2f693234d4a506f0813e7356fc5 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_can_async.o.d" -o ${OBJECTDIR}/hal/src/hal_can_async.o hal/src/hal_can_async.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/flags/Default/a058c3fadd5f704b2b8f2f6fe180a5229f045bde .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_flash.o: hal/src/hal_flash.c  .generated_files/flags/Default/a09b5e0fa44c669c1deb734a04d61c3c68e533a8 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_flash.o.d" -o ${OBJECTDIR}/hal/src/hal_flash.o hal/src/hal_flash.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/flags/Default/7c2399d19392697d3905fd3e01a0e9630db263b4 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/flags/Default/d54cb91c9cade1eee5681900e3133e6c1a046613 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/flags/Default/e3d0f0fe45462cdb89b4b33fcb0970837d2589cc .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/flags/Default/cb1873a802fe95c8f5e23fd4246db5f38fc12bd6 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_timer.o: hal/src/hal_timer.c  .generated_files/flags/Default/db98c4429db3335c5147d9b06253556b7afd7879 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_timer.o.d" -o ${OBJECTDIR}/hal/src/hal_timer.o hal/src/hal_timer.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/flags/Default/67379155f19908149b9658efb9efcb4f11ee7cd4 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/flags/Default/9150422f12739330bc70075104867953ff8d3230 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/flags/Default/9dc3415512c7560c371a2ae67a3d48f1dfc350ee .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/flags/Default/26ea9b10a4c985b0410ee8174c1625db0b4391c8 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/flags/Default/23e924d1ac43cc7af7524c9214f4bcf797588c1f .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/can/hpl_can.o: hpl/can/hpl_can.c  .generated_files/flags/Default/f694e1e7eb0e14e34ef86a269fe004fe9f5651af .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/can" 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o.d 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/can/hpl_can.o.d" -o ${OBJECTDIR}/hpl/can/hpl_can.o hpl/can/hpl_can.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o: hpl/core/hpl_core_m0plus_base.c  .generated_files/flags/Default/39ba2d911422bd15c9879bfd2d730ca32447158b .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o hpl/core/hpl_core_m0plus_base.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/flags/Default/fbf4e78602c2d0ee644370341c84c74a4b2d8eeb .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/divas/hpl_divas.o: hpl/divas/hpl_divas.c  .generated_files/flags/Default/e3fb5e025a5a16db8f9402342b79ee90952a987b .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/divas" 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o.d 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/divas/hpl_divas.o.d" -o ${OBJECTDIR}/hpl/divas/hpl_divas.o hpl/divas/hpl_divas.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/flags/Default/5273060261ef14e2416662f93b4e4ffc9ee087da .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/flags/Default/9aeee76babc1df4fed8a0086a7bd8b4e073e01b8 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/flags/Default/ed73ba8d0f263d41b30ef787ffe0b143b403ef2e .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o: hpl/nvmctrl/hpl_nvmctrl.c  .generated_files/flags/Default/8bd4fff9491090732fa7774f73bdd81c32d0a180 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/nvmctrl" 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" -o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o hpl/nvmctrl/hpl_nvmctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/flags/Default/b98a63f9f1581bc183d97219211042ea56fa9b3e .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/flags/Default/c10afccbcb83b1ea60eb36bfb397f88e9bc86091 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/flags/Default/17ffe31d6c0b6e310cdc4864c9f67185902b33fe .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/flags/Default/6151b2d925bf7658da5deaf6e1a040410b916e6a .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/tc/hpl_tc.o: hpl/tc/hpl_tc.c  .generated_files/flags/Default/8b1b1ba5a003fd89a433adffce52b0942ff7a8de .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/hpl/tc" 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o.d 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/tc/hpl_tc.o.d" -o ${OBJECTDIR}/hpl/tc/hpl_tc.o hpl/tc/hpl_tc.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o: samc21n/gcc/gcc/startup_samc21.c  .generated_files/flags/Default/a8454a77e593774af680a0e9d5df521b54d544db .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o samc21n/gcc/gcc/startup_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/system_samc21.o: samc21n/gcc/system_samc21.c  .generated_files/flags/Default/35928d03a1c7fcba713f177829ec92ae2e802306 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/system_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/system_samc21.o samc21n/gcc/system_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/gcc/read.o: stdio_redirect/gcc/read.c  .generated_files/flags/Default/cd76c7eeccc83d8ee7c1aa6a91b8e73f3ece8a22 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/stdio_redirect/gcc" 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/read.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/gcc/read.o.d" -o ${OBJECTDIR}/stdio_redirect/gcc/read.o stdio_redirect/gcc/read.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/gcc/write.o: stdio_redirect/gcc/write.c  .generated_files/flags/Default/2ea6526dd9ca9eff8b8bf40dc13ee3bc5f5a3efc .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/stdio_redirect/gcc" 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/write.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/gcc/write.o.d" -o ${OBJECTDIR}/stdio_redirect/gcc/write.o stdio_redirect/gcc/write.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/stdio_io.o: stdio_redirect/stdio_io.c  .generated_files/flags/Default/c8bb1f418a9a1c6bcac8aca927221ea9b04d287a .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}/stdio_redirect" 
	@${RM} ${OBJECTDIR}/stdio_redirect/stdio_io.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/stdio_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/stdio_io.o.d" -o ${OBJECTDIR}/stdio_redirect/stdio_io.o stdio_redirect/stdio_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/b64c84a8f7773a10700ef3cc397cb9e50e9cf733 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/flags/Default/773d2a451b7a6208407c6207f4b96d3f5adecec7 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_start.o: stdio_start.c  .generated_files/flags/Default/3271733d28287d2e4ca7e8ac9925952ec7df9522 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/stdio_start.o.d 
	@${RM} ${OBJECTDIR}/stdio_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_start.o.d" -o ${OBJECTDIR}/stdio_start.o stdio_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/5c3f5fefbf25d1a1ac6fb30534f51fa6e8c930c8 .generated_files/flags/Default/b1e6bbd3b217efaf901ea0166f77d1afebb16fd9
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
