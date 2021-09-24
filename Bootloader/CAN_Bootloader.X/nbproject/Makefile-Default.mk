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
MKDIR=gnumkdir -p
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
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/flags/Default/16c6f4929715d10ed8aca82bd08eb4ea3aceea39 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/flags/Default/3605bc4d0b26878c4d10391b0df540fb1e51a20 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_can_async.o: hal/src/hal_can_async.c  .generated_files/flags/Default/97121f53328a360ae94e9cdc6a572c02ba2e3b4 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_can_async.o.d" -o ${OBJECTDIR}/hal/src/hal_can_async.o hal/src/hal_can_async.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/flags/Default/3bca9f5e4d4ad508a1bf3a26f043bacdc8ded86a .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_flash.o: hal/src/hal_flash.c  .generated_files/flags/Default/7de17be5ac28a8be3fba2afcc409e10e077cae5d .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_flash.o.d" -o ${OBJECTDIR}/hal/src/hal_flash.o hal/src/hal_flash.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/flags/Default/a8897219835144384ae4111a0be3027bba93153a .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/flags/Default/565a38c9d3d6c1b2606a067a777d76538d22f2ed .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/flags/Default/5c1b24dc68477e421e74d205c518fff2aff56359 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/flags/Default/b3d3d105ac280e3ada5180a96ef47443fb7e4b45 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_timer.o: hal/src/hal_timer.c  .generated_files/flags/Default/f6962836dfa55936ada00a552b61225774e28694 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_timer.o.d" -o ${OBJECTDIR}/hal/src/hal_timer.o hal/src/hal_timer.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/flags/Default/f146e09d3429c963596edfcd10928e377a43e523 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/flags/Default/7be3938d7ed8cc71a667e8e5cd4063846b0704fe .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/flags/Default/3bc151c00ec279e78e829159c28b8a42c61ff1a4 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/flags/Default/e5bf2bae0f94a8b03b55d0557ae5718a5d71a797 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/flags/Default/44960984d5332a9fb58b9e76806ead53f6174ec9 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/can/hpl_can.o: hpl/can/hpl_can.c  .generated_files/flags/Default/82c0b564cbdc5ced87a39ad533979702cd754494 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/can" 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o.d 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/can/hpl_can.o.d" -o ${OBJECTDIR}/hpl/can/hpl_can.o hpl/can/hpl_can.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o: hpl/core/hpl_core_m0plus_base.c  .generated_files/flags/Default/345fb6aa4d812c72e6e96d6c6b9b6cd8b7a778b .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o hpl/core/hpl_core_m0plus_base.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/flags/Default/889dc7c9f62541b7cd21aff47ed48fc8e365afb7 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/divas/hpl_divas.o: hpl/divas/hpl_divas.c  .generated_files/flags/Default/62cfcf03ded43eaba17365dbd59a74c5e04ed951 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/divas" 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o.d 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/divas/hpl_divas.o.d" -o ${OBJECTDIR}/hpl/divas/hpl_divas.o hpl/divas/hpl_divas.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/flags/Default/7a6c00b5ccc34c5479157a8a0e18fb4985811cf8 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/flags/Default/73f0ebc7a0b1f7856ac9b78b029acffdf72727bf .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/flags/Default/f3e381cdc90ba7ae29eb715a2c807e278a48e2c3 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o: hpl/nvmctrl/hpl_nvmctrl.c  .generated_files/flags/Default/fca621252b734bc065d08d02acfb56076f06cbaa .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/nvmctrl" 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" -o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o hpl/nvmctrl/hpl_nvmctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/flags/Default/1a8f7219399cd5d6129c9c7c9f5937d9a2216440 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/flags/Default/338ffc1953d22e26e7a699554279b5b0affaa57d .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/flags/Default/b3018c542ec6f7d628f3d7ea35d487134d1bc87f .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/flags/Default/a95f58762d96e9e7cddcece5652fd3fa608f25f9 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/tc/hpl_tc.o: hpl/tc/hpl_tc.c  .generated_files/flags/Default/ad9913ec52cf7d17e405141633d2b7e64984efe1 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/tc" 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o.d 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/tc/hpl_tc.o.d" -o ${OBJECTDIR}/hpl/tc/hpl_tc.o hpl/tc/hpl_tc.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o: samc21n/gcc/gcc/startup_samc21.c  .generated_files/flags/Default/8ed35f57565a69029e03542e895c26a6223e16b4 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o samc21n/gcc/gcc/startup_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/system_samc21.o: samc21n/gcc/system_samc21.c  .generated_files/flags/Default/47641a1376248996587204b79ea0131a46221ca4 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/system_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/system_samc21.o samc21n/gcc/system_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/gcc/read.o: stdio_redirect/gcc/read.c  .generated_files/flags/Default/e88ee23c1472ab4531daaf08fc7ebd344cb64643 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/stdio_redirect/gcc" 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/read.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/gcc/read.o.d" -o ${OBJECTDIR}/stdio_redirect/gcc/read.o stdio_redirect/gcc/read.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/gcc/write.o: stdio_redirect/gcc/write.c  .generated_files/flags/Default/4e8b8030008dd401e0bac6e4928fedf4bbef0518 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/stdio_redirect/gcc" 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/write.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/gcc/write.o.d" -o ${OBJECTDIR}/stdio_redirect/gcc/write.o stdio_redirect/gcc/write.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/stdio_io.o: stdio_redirect/stdio_io.c  .generated_files/flags/Default/e27266cdfb9f0bc981f83060e22ba423b55afb8f .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/stdio_redirect" 
	@${RM} ${OBJECTDIR}/stdio_redirect/stdio_io.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/stdio_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/stdio_io.o.d" -o ${OBJECTDIR}/stdio_redirect/stdio_io.o stdio_redirect/stdio_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/d26b7b8d80dd1e13b2edb5c69e657e096f474b2e .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/flags/Default/b244ee9c652a0792c6271e484fc70753f2eca732 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_start.o: stdio_start.c  .generated_files/flags/Default/6cd8636223cd63ea657045cc1974c97dec170c2e .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/stdio_start.o.d 
	@${RM} ${OBJECTDIR}/stdio_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_start.o.d" -o ${OBJECTDIR}/stdio_start.o stdio_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/38f9651de9701e34255a3f22362e4d86f460ffba .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/flags/Default/37b3083f59ccc883846f62dc3c3e15113a547487 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/flags/Default/808ebaf18081a2ef378035828363d7bc42d63bdf .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_can_async.o: hal/src/hal_can_async.c  .generated_files/flags/Default/196a8eb077ac9bff14f4ed9e75b1b35c1b696e5c .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_can_async.o.d" -o ${OBJECTDIR}/hal/src/hal_can_async.o hal/src/hal_can_async.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/flags/Default/1a9553a2a6769d3f8a0c2a5aaf828ed7bcd172bc .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_flash.o: hal/src/hal_flash.c  .generated_files/flags/Default/4eb72ec70d25aa2f96e24536eacfe92f2c9b2d32 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_flash.o.d" -o ${OBJECTDIR}/hal/src/hal_flash.o hal/src/hal_flash.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/flags/Default/edc9619fa055f15c1d88bb4a257b9e99ba1d86df .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/flags/Default/5b287f4268ae0060f4311e323cb7b0dcc7645cf1 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/flags/Default/3a2a5855a83a5765332a3189011939e791614e1e .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/flags/Default/1fb96ce5621328103bf6b8b6fbc027f2855fd944 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_timer.o: hal/src/hal_timer.c  .generated_files/flags/Default/8358dd3a428aabac8504717d55e59590dde0d42f .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_timer.o.d" -o ${OBJECTDIR}/hal/src/hal_timer.o hal/src/hal_timer.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/flags/Default/332e81dd5bd09e3689227c5af2f22a7eb2856d4c .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/flags/Default/62ea4749f52858b77c92d16ac445ee840941e264 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/flags/Default/118071a7a8e883b2f752f4b2c0774e291158854c .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/flags/Default/cce79674db2140926269e1197c86c452954ca42b .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/flags/Default/6d3e87fe53c15fbbbfb9bc62089b5af135921dce .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/can/hpl_can.o: hpl/can/hpl_can.c  .generated_files/flags/Default/39e0d7af8df1f617a64e8aad6758b833b0b46358 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/can" 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o.d 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/can/hpl_can.o.d" -o ${OBJECTDIR}/hpl/can/hpl_can.o hpl/can/hpl_can.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o: hpl/core/hpl_core_m0plus_base.c  .generated_files/flags/Default/53cebd2dea7cce28be2b1cfbaf88d6cdd7ecdc9e .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o hpl/core/hpl_core_m0plus_base.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/flags/Default/f8b416076985d91f001ee6ed1463aa04bfdcc5d9 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/divas/hpl_divas.o: hpl/divas/hpl_divas.c  .generated_files/flags/Default/d843653e88226d09d4819f1e7f9ee66d4318df8e .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/divas" 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o.d 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/divas/hpl_divas.o.d" -o ${OBJECTDIR}/hpl/divas/hpl_divas.o hpl/divas/hpl_divas.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/flags/Default/859ac1e96114382e9bbcfc22759cacd2482716b8 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/flags/Default/251188381cb79c57f61926a74a36e4cab2d83657 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/flags/Default/163288e77fc81704198d0140eb38e51a485542c .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o: hpl/nvmctrl/hpl_nvmctrl.c  .generated_files/flags/Default/3ad5d56f1d06f36f4d69d9cd823685c5d46c84ab .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/nvmctrl" 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" -o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o hpl/nvmctrl/hpl_nvmctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/flags/Default/5a94706528ac06245623909b1cc530f9d0c27c1e .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/flags/Default/f4f5976d5ab1b02af1fb7e1cf83523dcd03bec8a .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/flags/Default/ba117df8e5358f57102a780954e0fb73e50094fa .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/flags/Default/9dc96e64cc332b7eb73bbe6bf4f82b1aedb426f0 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/tc/hpl_tc.o: hpl/tc/hpl_tc.c  .generated_files/flags/Default/55e1d2ff8d3dba4ff0f0904b7020a9e986ab0056 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/hpl/tc" 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o.d 
	@${RM} ${OBJECTDIR}/hpl/tc/hpl_tc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/tc/hpl_tc.o.d" -o ${OBJECTDIR}/hpl/tc/hpl_tc.o hpl/tc/hpl_tc.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o: samc21n/gcc/gcc/startup_samc21.c  .generated_files/flags/Default/39fb571a5eb6014da401a6905a80392b41e9c3c4 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o samc21n/gcc/gcc/startup_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/system_samc21.o: samc21n/gcc/system_samc21.c  .generated_files/flags/Default/476f0290743b3f22de68e549e06b94585b8ecf4f .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/system_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/system_samc21.o samc21n/gcc/system_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/gcc/read.o: stdio_redirect/gcc/read.c  .generated_files/flags/Default/6755611eb20f2734b22185e56db1ee0f1c9545e8 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/stdio_redirect/gcc" 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/read.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/gcc/read.o.d" -o ${OBJECTDIR}/stdio_redirect/gcc/read.o stdio_redirect/gcc/read.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/gcc/write.o: stdio_redirect/gcc/write.c  .generated_files/flags/Default/35aee0f2e3c49c1b4473b7d65b51238881cbcff6 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/stdio_redirect/gcc" 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/write.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/gcc/write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/gcc/write.o.d" -o ${OBJECTDIR}/stdio_redirect/gcc/write.o stdio_redirect/gcc/write.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_redirect/stdio_io.o: stdio_redirect/stdio_io.c  .generated_files/flags/Default/37947a7a61c72bc47362f9ac2804e3f84f996d0f .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}/stdio_redirect" 
	@${RM} ${OBJECTDIR}/stdio_redirect/stdio_io.o.d 
	@${RM} ${OBJECTDIR}/stdio_redirect/stdio_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_redirect/stdio_io.o.d" -o ${OBJECTDIR}/stdio_redirect/stdio_io.o stdio_redirect/stdio_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/f5785ebb7bd72cce0f9e49e170ca766164766e24 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/flags/Default/6464d84831defa14d731bc6fbb8422b5d632c0a6 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/stdio_start.o: stdio_start.c  .generated_files/flags/Default/8bbfa3f259147674e292638b614a3807f77727b1 .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/stdio_start.o.d 
	@${RM} ${OBJECTDIR}/stdio_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/stdio_start.o.d" -o ${OBJECTDIR}/stdio_start.o stdio_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/c94872a8a79632cef7c3bc795b929cac6736baae .generated_files/flags/Default/d18e547e219ef6d0f7188fecafb774aed0f6d856
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/tc" -I "hpl/dmac" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri" -I "stdio_redirect"  -I "CMSIS/Core/Include" -I "samc21n/include"  -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -D__$(MP_PROCESSOR_OPTION)__    -mthumb --specs=nosys.specs -Wl,-Map="dist\${CND_CONF}\${IMAGE_TYPE}\CAN_Bootloader.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1  -L"samc21n/gcc/gcc" -Wl,--gc-sections   -T"samc21n/gcc/gcc/samc21n18a_flash.ld" 
	
	
	
	
	
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus  -D__$(MP_PROCESSOR_OPTION)__    -mthumb --specs=nosys.specs -Wl,-Map="dist\${CND_CONF}\${IMAGE_TYPE}\CAN_Bootloader.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)  -L"samc21n/gcc/gcc" -Wl,--gc-sections   -T"samc21n/gcc/gcc/samc21n18a_flash.ld" 
	
	${MP_CC_DIR}\\arm-none-eabi-objcopy -O ihex -R .eeprom -R .fuse -R .lock -R .signature "dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/CAN_Bootloader.X.${IMAGE_TYPE}.hex"
	
	
	
	
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
