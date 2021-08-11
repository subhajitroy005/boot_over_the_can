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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/HOST_Programmer_firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/HOST_Programmer_firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=examples/driver_examples.c hal/src/hal_atomic.c hal/src/hal_can_async.c hal/src/hal_delay.c hal/src/hal_flash.c hal/src/hal_gpio.c hal/src/hal_init.c hal/src/hal_io.c hal/src/hal_sleep.c hal/src/hal_wdt.c hal/src/hal_usart_sync.c hal/utils/src/utils_assert.c hal/utils/src/utils_event.c hal/utils/src/utils_list.c hal/utils/src/utils_syscalls.c hpl/can/hpl_can.c hpl/core/hpl_core_m0plus_base.c hpl/core/hpl_init.c hpl/divas/hpl_divas.c hpl/dmac/hpl_dmac.c hpl/gclk/hpl_gclk.c hpl/mclk/hpl_mclk.c hpl/nvmctrl/hpl_nvmctrl.c hpl/osc32kctrl/hpl_osc32kctrl.c hpl/oscctrl/hpl_oscctrl.c hpl/pm/hpl_pm.c hpl/sercom/hpl_sercom.c hpl/wdt/hpl_wdt.c samc21n/gcc/gcc/startup_samc21.c samc21n/gcc/system_samc21.c main.c driver_init.c atmel_start.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/examples/driver_examples.o ${OBJECTDIR}/hal/src/hal_atomic.o ${OBJECTDIR}/hal/src/hal_can_async.o ${OBJECTDIR}/hal/src/hal_delay.o ${OBJECTDIR}/hal/src/hal_flash.o ${OBJECTDIR}/hal/src/hal_gpio.o ${OBJECTDIR}/hal/src/hal_init.o ${OBJECTDIR}/hal/src/hal_io.o ${OBJECTDIR}/hal/src/hal_sleep.o ${OBJECTDIR}/hal/src/hal_wdt.o ${OBJECTDIR}/hal/src/hal_usart_sync.o ${OBJECTDIR}/hal/utils/src/utils_assert.o ${OBJECTDIR}/hal/utils/src/utils_event.o ${OBJECTDIR}/hal/utils/src/utils_list.o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o ${OBJECTDIR}/hpl/can/hpl_can.o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o ${OBJECTDIR}/hpl/core/hpl_init.o ${OBJECTDIR}/hpl/divas/hpl_divas.o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o ${OBJECTDIR}/hpl/pm/hpl_pm.o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o ${OBJECTDIR}/hpl/wdt/hpl_wdt.o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o ${OBJECTDIR}/samc21n/gcc/system_samc21.o ${OBJECTDIR}/main.o ${OBJECTDIR}/driver_init.o ${OBJECTDIR}/atmel_start.o
POSSIBLE_DEPFILES=${OBJECTDIR}/examples/driver_examples.o.d ${OBJECTDIR}/hal/src/hal_atomic.o.d ${OBJECTDIR}/hal/src/hal_can_async.o.d ${OBJECTDIR}/hal/src/hal_delay.o.d ${OBJECTDIR}/hal/src/hal_flash.o.d ${OBJECTDIR}/hal/src/hal_gpio.o.d ${OBJECTDIR}/hal/src/hal_init.o.d ${OBJECTDIR}/hal/src/hal_io.o.d ${OBJECTDIR}/hal/src/hal_sleep.o.d ${OBJECTDIR}/hal/src/hal_wdt.o.d ${OBJECTDIR}/hal/src/hal_usart_sync.o.d ${OBJECTDIR}/hal/utils/src/utils_assert.o.d ${OBJECTDIR}/hal/utils/src/utils_event.o.d ${OBJECTDIR}/hal/utils/src/utils_list.o.d ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d ${OBJECTDIR}/hpl/can/hpl_can.o.d ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d ${OBJECTDIR}/hpl/core/hpl_init.o.d ${OBJECTDIR}/hpl/divas/hpl_divas.o.d ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d ${OBJECTDIR}/hpl/pm/hpl_pm.o.d ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d ${OBJECTDIR}/hpl/wdt/hpl_wdt.o.d ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d ${OBJECTDIR}/samc21n/gcc/system_samc21.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/driver_init.o.d ${OBJECTDIR}/atmel_start.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/examples/driver_examples.o ${OBJECTDIR}/hal/src/hal_atomic.o ${OBJECTDIR}/hal/src/hal_can_async.o ${OBJECTDIR}/hal/src/hal_delay.o ${OBJECTDIR}/hal/src/hal_flash.o ${OBJECTDIR}/hal/src/hal_gpio.o ${OBJECTDIR}/hal/src/hal_init.o ${OBJECTDIR}/hal/src/hal_io.o ${OBJECTDIR}/hal/src/hal_sleep.o ${OBJECTDIR}/hal/src/hal_wdt.o ${OBJECTDIR}/hal/src/hal_usart_sync.o ${OBJECTDIR}/hal/utils/src/utils_assert.o ${OBJECTDIR}/hal/utils/src/utils_event.o ${OBJECTDIR}/hal/utils/src/utils_list.o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o ${OBJECTDIR}/hpl/can/hpl_can.o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o ${OBJECTDIR}/hpl/core/hpl_init.o ${OBJECTDIR}/hpl/divas/hpl_divas.o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o ${OBJECTDIR}/hpl/pm/hpl_pm.o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o ${OBJECTDIR}/hpl/wdt/hpl_wdt.o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o ${OBJECTDIR}/samc21n/gcc/system_samc21.o ${OBJECTDIR}/main.o ${OBJECTDIR}/driver_init.o ${OBJECTDIR}/atmel_start.o

# Source Files
SOURCEFILES=examples/driver_examples.c hal/src/hal_atomic.c hal/src/hal_can_async.c hal/src/hal_delay.c hal/src/hal_flash.c hal/src/hal_gpio.c hal/src/hal_init.c hal/src/hal_io.c hal/src/hal_sleep.c hal/src/hal_wdt.c hal/src/hal_usart_sync.c hal/utils/src/utils_assert.c hal/utils/src/utils_event.c hal/utils/src/utils_list.c hal/utils/src/utils_syscalls.c hpl/can/hpl_can.c hpl/core/hpl_core_m0plus_base.c hpl/core/hpl_init.c hpl/divas/hpl_divas.c hpl/dmac/hpl_dmac.c hpl/gclk/hpl_gclk.c hpl/mclk/hpl_mclk.c hpl/nvmctrl/hpl_nvmctrl.c hpl/osc32kctrl/hpl_osc32kctrl.c hpl/oscctrl/hpl_oscctrl.c hpl/pm/hpl_pm.c hpl/sercom/hpl_sercom.c hpl/wdt/hpl_wdt.c samc21n/gcc/gcc/startup_samc21.c samc21n/gcc/system_samc21.c main.c driver_init.c atmel_start.c

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
	${MAKE}  -f nbproject/Makefile-Default.mk dist/${CND_CONF}/${IMAGE_TYPE}/HOST_Programmer_firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/flags/Default/4a1ba75e6c73d8c47e9a235305f4192c4d9edb25 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/flags/Default/1abd7a703f0d8a18546f036fb05c492e281b9162 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_can_async.o: hal/src/hal_can_async.c  .generated_files/flags/Default/f2eeb06a45bcf202ae9b981df435927776bdb138 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_can_async.o.d" -o ${OBJECTDIR}/hal/src/hal_can_async.o hal/src/hal_can_async.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/flags/Default/b466f9b5d50787f954f8efabfacc979e32bc39ac .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_flash.o: hal/src/hal_flash.c  .generated_files/flags/Default/c25e530529165395650cf5414e9d7f3263d39d54 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_flash.o.d" -o ${OBJECTDIR}/hal/src/hal_flash.o hal/src/hal_flash.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/flags/Default/886b49004f21704098ceab7f21c599d739bbd44a .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/flags/Default/f849e958afed4b2db4aa196308c37b16c7cdfa87 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/flags/Default/65de69d9a46445ad44b1777c351beb8223104fd1 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/flags/Default/81621d163d3a50ff66166f735bf40691239466d6 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_wdt.o: hal/src/hal_wdt.c  .generated_files/flags/Default/e341fb4c1e6ce9b366ae7e46f0c3b01cbfffdbe1 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_wdt.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_wdt.o.d" -o ${OBJECTDIR}/hal/src/hal_wdt.o hal/src/hal_wdt.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/flags/Default/7795de37d2ee1bec174d31831ad3c02204f02306 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/flags/Default/a0fcb51c9d7018a3728f00784f56284381a85d55 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/flags/Default/8ba40ac4f6a9f0e3c1da9c61198d856a1504458d .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/flags/Default/d3a4c9be97c85c72f0d7c03a4f877e3e6b5e1560 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/flags/Default/941a64f78af1f18220ba8e493a196e40af1790ed .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/can/hpl_can.o: hpl/can/hpl_can.c  .generated_files/flags/Default/34aeacb7b1766d68d937ed326f772d115da8cfa4 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/can" 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o.d 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/can/hpl_can.o.d" -o ${OBJECTDIR}/hpl/can/hpl_can.o hpl/can/hpl_can.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o: hpl/core/hpl_core_m0plus_base.c  .generated_files/flags/Default/af02698630361841fd90c6e002bf9b8f9056f130 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o hpl/core/hpl_core_m0plus_base.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/flags/Default/f9b869e2dd2bd64170f6810cbc073ddce0fa6898 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/divas/hpl_divas.o: hpl/divas/hpl_divas.c  .generated_files/flags/Default/b532f5627b79dcc205a63c383f2478f65b5ecee6 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/divas" 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o.d 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/divas/hpl_divas.o.d" -o ${OBJECTDIR}/hpl/divas/hpl_divas.o hpl/divas/hpl_divas.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/flags/Default/e26228ed683c74b8e15234dc17248d791021af1c .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/flags/Default/3798a277512efc87c76feb5bef1b56d1942149d9 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/flags/Default/62ca7be099e8e1dc3a5fa00da31fa70cb85f0555 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o: hpl/nvmctrl/hpl_nvmctrl.c  .generated_files/flags/Default/bca4acd025ec5f05c2ee6258713f8fdfb13da83 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/nvmctrl" 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" -o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o hpl/nvmctrl/hpl_nvmctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/flags/Default/852c1ad44da5f178c16aa88f9d9cc2fae0d8aede .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/flags/Default/bdb54a8ad614f5f8c7d83c2c64daa990d4129553 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/flags/Default/86c01123adea7165cdfcf457f83a72340df945cf .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/flags/Default/ebcaf8acb8fd013cd146ffd46be3b79d3c1d40a1 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/wdt/hpl_wdt.o: hpl/wdt/hpl_wdt.c  .generated_files/flags/Default/9b479aabf1f6714b4de34bbf2c744e251114aab2 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/wdt" 
	@${RM} ${OBJECTDIR}/hpl/wdt/hpl_wdt.o.d 
	@${RM} ${OBJECTDIR}/hpl/wdt/hpl_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/wdt/hpl_wdt.o.d" -o ${OBJECTDIR}/hpl/wdt/hpl_wdt.o hpl/wdt/hpl_wdt.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o: samc21n/gcc/gcc/startup_samc21.c  .generated_files/flags/Default/4e914067398f5463e770eecf7530b5be47f58873 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o samc21n/gcc/gcc/startup_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/system_samc21.o: samc21n/gcc/system_samc21.c  .generated_files/flags/Default/bd75ae39f6549e2956a5dab59ef86aff1dc7d438 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/system_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/system_samc21.o samc21n/gcc/system_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/9d5be83e4c0c273c22ee16b2c9e016a294ef7f53 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/flags/Default/e458208417869ab494a8e626754ce6044c0e6791 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/17aebfd3351b5b962a31f2c6aa26f2db96a3dd24 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/flags/Default/9f36df6109c67861c3750388d9cd70a0465d4c53 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/flags/Default/62d7dd009eb30ee3e4da34f14aa80d1ad5c5e3d .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_can_async.o: hal/src/hal_can_async.c  .generated_files/flags/Default/cdc0557485dd9af0838db6111e0f8608fb052f57 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_can_async.o.d" -o ${OBJECTDIR}/hal/src/hal_can_async.o hal/src/hal_can_async.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/flags/Default/1bd8112bb78ecaa4956ce17b84766c4c0199eff4 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_flash.o: hal/src/hal_flash.c  .generated_files/flags/Default/8123636d5bfee78c54d96c4a883f3a77c60f2d4e .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_flash.o.d" -o ${OBJECTDIR}/hal/src/hal_flash.o hal/src/hal_flash.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/flags/Default/20557b77233c0df949b1b12a719d0fb6bbb722cc .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/flags/Default/904d8f206cd0509eb7f853f6d254097bd75719f0 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/flags/Default/29b94eab6fdceab09962d8294cc891a295321754 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/flags/Default/c0db2a3c345fb5c9f6b0467d2cd5eb7518cbd960 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_wdt.o: hal/src/hal_wdt.c  .generated_files/flags/Default/e16c0d5f09448492a1676c9ac43f2dd95951d6b8 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_wdt.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_wdt.o.d" -o ${OBJECTDIR}/hal/src/hal_wdt.o hal/src/hal_wdt.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/flags/Default/ad8671d3fcf5810225b7a64656be39445a3d0c15 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/flags/Default/bac4a19b30e5c7134e42305ff50724c5e7bfb5f5 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/flags/Default/a0c6c3631ec1b55b8226ad3211cdcfa38e3a1761 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/flags/Default/532bb1393dc2d165dae4efb591b60dbd47f023f0 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/flags/Default/74f5ec194682a357ebad67f217d4c08fe88dc7a7 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/can/hpl_can.o: hpl/can/hpl_can.c  .generated_files/flags/Default/9b3a465cf2e1d9a7cf0dfd71e28869363ec6dc55 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/can" 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o.d 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/can/hpl_can.o.d" -o ${OBJECTDIR}/hpl/can/hpl_can.o hpl/can/hpl_can.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o: hpl/core/hpl_core_m0plus_base.c  .generated_files/flags/Default/6e20f0d7dd93e984c3a43a8cc322c928b7db9a7b .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o hpl/core/hpl_core_m0plus_base.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/flags/Default/8af4126927b364bfac2e0a7ae44de5b5c8046194 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/divas/hpl_divas.o: hpl/divas/hpl_divas.c  .generated_files/flags/Default/dc963b7df9cd5bde36b6b7815e5b44cff11226be .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/divas" 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o.d 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/divas/hpl_divas.o.d" -o ${OBJECTDIR}/hpl/divas/hpl_divas.o hpl/divas/hpl_divas.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/flags/Default/53d7f744567d8a9cd854b74c983c85db1aafba52 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/flags/Default/217fb14c21a1daa2eedd09d74279564620216e07 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/flags/Default/afeb04bb4151906cdbb3ca26757772ccf8e99fa7 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o: hpl/nvmctrl/hpl_nvmctrl.c  .generated_files/flags/Default/e210b0093988318ae8cccc24a7cfb5c3a8e27b27 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/nvmctrl" 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" -o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o hpl/nvmctrl/hpl_nvmctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/flags/Default/70e8cf5f1ed813c9d98c34dcc98a59b3fb4110de .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/flags/Default/9d5c806b346d8e007aaf4d7096fb2804cb0c07a9 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/flags/Default/5a21e14d95e4100ee50900659ee7838a5140ee45 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/flags/Default/c340168e8d5f2a3281d949dd545c6438c36fcdd7 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/wdt/hpl_wdt.o: hpl/wdt/hpl_wdt.c  .generated_files/flags/Default/27a379b7aaf0a2066ffa19cab9327dddac582182 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/hpl/wdt" 
	@${RM} ${OBJECTDIR}/hpl/wdt/hpl_wdt.o.d 
	@${RM} ${OBJECTDIR}/hpl/wdt/hpl_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/wdt/hpl_wdt.o.d" -o ${OBJECTDIR}/hpl/wdt/hpl_wdt.o hpl/wdt/hpl_wdt.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o: samc21n/gcc/gcc/startup_samc21.c  .generated_files/flags/Default/df09a6bf9ae3210d81d3a5d1ab5a2c4db85a8623 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o samc21n/gcc/gcc/startup_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/system_samc21.o: samc21n/gcc/system_samc21.c  .generated_files/flags/Default/96363194876d9552a1dea4ba95c35ee5c69d691e .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/system_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/system_samc21.o samc21n/gcc/system_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Default/61498dc10ebba65bbebf5007b35bad357e738146 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/flags/Default/f67322e4e24018458c564599729f0c388deb9aa9 .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/flags/Default/d8b65385fdab093e6308e2881fcdfae52bb06ace .generated_files/flags/Default/76fdad1e15e9c752cbccd0ba2aa25213d90a846b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/HOST_Programmer_firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus   -gdwarf-2  -D__$(MP_PROCESSOR_OPTION)__    -mthumb --specs=nosys.specs -Wl,-Map="dist/${CND_CONF}/${IMAGE_TYPE}/HOST_Programmer_firmware.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/HOST_Programmer_firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1  -L"samc21n/gcc/gcc" -Wl,--gc-sections   -T"samc21n/gcc/gcc/samc21n18a_flash.ld" 
	
	
	
	
	
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/HOST_Programmer_firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=cortex-m0plus  -D__$(MP_PROCESSOR_OPTION)__    -mthumb --specs=nosys.specs -Wl,-Map="dist/${CND_CONF}/${IMAGE_TYPE}/HOST_Programmer_firmware.X.${IMAGE_TYPE}.map"  -o dist/${CND_CONF}/${IMAGE_TYPE}/HOST_Programmer_firmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)  -L"samc21n/gcc/gcc" -Wl,--gc-sections   -T"samc21n/gcc/gcc/samc21n18a_flash.ld" 
	
	${MP_CC_DIR}/arm-none-eabi-objcopy -O ihex -R .eeprom -R .fuse -R .lock -R .signature "dist/${CND_CONF}/${IMAGE_TYPE}/HOST_Programmer_firmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/HOST_Programmer_firmware.X.${IMAGE_TYPE}.hex"
	
	
	
	
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
