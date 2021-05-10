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
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/8343a8c3eafaa3395de569ead64efe9cb0f1aa3e.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/99bb7bc938bbd7831fd7aadc50684a743a2c9081.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_can_async.o: hal/src/hal_can_async.c  .generated_files/36326581d818923d734d6f025d59439b8d03fc4b.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_can_async.o.d" -o ${OBJECTDIR}/hal/src/hal_can_async.o hal/src/hal_can_async.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/4a945cb2e6a8cfc93f81f69c5934dddc3ee07c05.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_flash.o: hal/src/hal_flash.c  .generated_files/bde12fa413596c2c034cef37c1ed63ed28f05d88.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_flash.o.d" -o ${OBJECTDIR}/hal/src/hal_flash.o hal/src/hal_flash.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/372460c7c46f17f5edb29433e43b1e17f0de3a66.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/b42a20c26d24085345b7ecca4136e2c1b0d4165f.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/4303a97d8d891b309ec1ab581a0fbb69fcb17499.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/1cd3bc3d75a5af425e962f4e3ec8fa2f1738cf65.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_wdt.o: hal/src/hal_wdt.c  .generated_files/f90d95235d74e82d681b830b89b75d652acd3de9.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_wdt.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_wdt.o.d" -o ${OBJECTDIR}/hal/src/hal_wdt.o hal/src/hal_wdt.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/b35228aaab5ddf5d50609b701eca04e9d2a5c658.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/62e0eb0e62841517afd6062e40ecb4376ce3ca43.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/e2a9ce80698ca3c76365c642745b12b7cf7bd600.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/88a74ced91589a045a31948e4c6cb8d26dfe44da.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/3582e0dd7dbf55102a8cd326c9c361b32d8c9895.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/can/hpl_can.o: hpl/can/hpl_can.c  .generated_files/63b4bc6ee7a3ee3f7f66deb6cd0df5092d6186ab.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/can" 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o.d 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/can/hpl_can.o.d" -o ${OBJECTDIR}/hpl/can/hpl_can.o hpl/can/hpl_can.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o: hpl/core/hpl_core_m0plus_base.c  .generated_files/28425da3f0471adb5fe0be3556a83253a85f0238.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o hpl/core/hpl_core_m0plus_base.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/9bcd881f9a484722b97e80242d8911a2219fc054.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/divas/hpl_divas.o: hpl/divas/hpl_divas.c  .generated_files/dabf8683b1fe7be44f42373f6d2ca4688e71102d.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/divas" 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o.d 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/divas/hpl_divas.o.d" -o ${OBJECTDIR}/hpl/divas/hpl_divas.o hpl/divas/hpl_divas.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/5124413a31722ef20c263c27548e5a11860ea4ad.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/587788ad94897330eab26688428ca9bb638e48d3.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/41d6d9245b825f9faf16843052ec9cf9f732bac0.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o: hpl/nvmctrl/hpl_nvmctrl.c  .generated_files/269f5b2e73c003a68a564c04b68bb643b6764c6d.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/nvmctrl" 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" -o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o hpl/nvmctrl/hpl_nvmctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/9594a45b2e871e6f121143952a5470f4b47aa561.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/5d40f3581771ddfd97ed125463ff673409186dff.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/a4a7e0a7f31e2f60f17d2b72b06b488c04d947d4.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/82a22ad50404e49c127b939acc9a44e96e7db8f4.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/wdt/hpl_wdt.o: hpl/wdt/hpl_wdt.c  .generated_files/6a9c18c4deff2eddc4218df2ddd8978a3630a0b5.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/wdt" 
	@${RM} ${OBJECTDIR}/hpl/wdt/hpl_wdt.o.d 
	@${RM} ${OBJECTDIR}/hpl/wdt/hpl_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/wdt/hpl_wdt.o.d" -o ${OBJECTDIR}/hpl/wdt/hpl_wdt.o hpl/wdt/hpl_wdt.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o: samc21n/gcc/gcc/startup_samc21.c  .generated_files/928c85a8606db6470775e6d082b2adee813fa5f3.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o samc21n/gcc/gcc/startup_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/system_samc21.o: samc21n/gcc/system_samc21.c  .generated_files/a2a73dc361dbff4451dd9133846b21b83fc26a8.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/system_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/system_samc21.o samc21n/gcc/system_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/fd9874ad95beeb16c025af6eece18edcd190cfab.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/253335700ef11d722b044bb19f313089bf7903e4.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/32a36c566937d39f5f5ff57d5ef8bba2470f4358.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus -g -D__DEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/atmel_start.o.d" -o ${OBJECTDIR}/atmel_start.o atmel_start.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/examples/driver_examples.o: examples/driver_examples.c  .generated_files/5006a74b30ade68f22e68299e24c784435f0ab18.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/examples" 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o.d 
	@${RM} ${OBJECTDIR}/examples/driver_examples.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/examples/driver_examples.o.d" -o ${OBJECTDIR}/examples/driver_examples.o examples/driver_examples.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_atomic.o: hal/src/hal_atomic.c  .generated_files/c1deb2043185cfd4273547023626552c9acf5edb.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_atomic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_atomic.o.d" -o ${OBJECTDIR}/hal/src/hal_atomic.o hal/src/hal_atomic.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_can_async.o: hal/src/hal_can_async.c  .generated_files/b18902336fc7aff11b22818c65b96482bd9501bd.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_can_async.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_can_async.o.d" -o ${OBJECTDIR}/hal/src/hal_can_async.o hal/src/hal_can_async.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_delay.o: hal/src/hal_delay.c  .generated_files/921442c2627fd4e3cf1788d8388b3fa24adad9e5.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_delay.o.d" -o ${OBJECTDIR}/hal/src/hal_delay.o hal/src/hal_delay.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_flash.o: hal/src/hal_flash.c  .generated_files/fac8075054135d6d8bc4ed5ac397fab4a0321da5.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_flash.o.d" -o ${OBJECTDIR}/hal/src/hal_flash.o hal/src/hal_flash.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_gpio.o: hal/src/hal_gpio.c  .generated_files/baaff7d89447b1a2c09e300486e0e0da033a62c9.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_gpio.o.d" -o ${OBJECTDIR}/hal/src/hal_gpio.o hal/src/hal_gpio.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_init.o: hal/src/hal_init.c  .generated_files/83cdc544a5b5441934d4c28ec86c2336ea5c55da.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_init.o.d" -o ${OBJECTDIR}/hal/src/hal_init.o hal/src/hal_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_io.o: hal/src/hal_io.c  .generated_files/651094f1a435a85b1dd9dc055e995dba3e2f84a8.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_io.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_io.o.d" -o ${OBJECTDIR}/hal/src/hal_io.o hal/src/hal_io.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_sleep.o: hal/src/hal_sleep.c  .generated_files/1d3d951f632d5aa1d0f0ea4106e53ef4da6fd081.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_sleep.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_sleep.o.d" -o ${OBJECTDIR}/hal/src/hal_sleep.o hal/src/hal_sleep.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_wdt.o: hal/src/hal_wdt.c  .generated_files/5b8bfe829318894dc9d312b65e56252ea1ba9c8d.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_wdt.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_wdt.o.d" -o ${OBJECTDIR}/hal/src/hal_wdt.o hal/src/hal_wdt.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/src/hal_usart_sync.o: hal/src/hal_usart_sync.c  .generated_files/3d1cae077abb1a6df5891ccd96a27e33dc98f651.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/src" 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o.d 
	@${RM} ${OBJECTDIR}/hal/src/hal_usart_sync.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/src/hal_usart_sync.o.d" -o ${OBJECTDIR}/hal/src/hal_usart_sync.o hal/src/hal_usart_sync.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_assert.o: hal/utils/src/utils_assert.c  .generated_files/41d5bdf98edc13bdd9b879243f0e038f0093d955.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_assert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_assert.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_assert.o hal/utils/src/utils_assert.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_event.o: hal/utils/src/utils_event.c  .generated_files/ba30870c82ffa6840ddf19b92668b57a729155e0.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_event.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_event.o hal/utils/src/utils_event.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_list.o: hal/utils/src/utils_list.c  .generated_files/df1c6911b47989606b607b9f3dfc1c42ca86b49a.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_list.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_list.o hal/utils/src/utils_list.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hal/utils/src/utils_syscalls.o: hal/utils/src/utils_syscalls.c  .generated_files/422bb8e8cc8d969dd02c30fbabbdfda70c90d6c9.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hal/utils/src" 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d 
	@${RM} ${OBJECTDIR}/hal/utils/src/utils_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hal/utils/src/utils_syscalls.o.d" -o ${OBJECTDIR}/hal/utils/src/utils_syscalls.o hal/utils/src/utils_syscalls.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/can/hpl_can.o: hpl/can/hpl_can.c  .generated_files/a2a215fee54b1e7480fbbcb737cfc6cd9d4a2899.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/can" 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o.d 
	@${RM} ${OBJECTDIR}/hpl/can/hpl_can.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/can/hpl_can.o.d" -o ${OBJECTDIR}/hpl/can/hpl_can.o hpl/can/hpl_can.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o: hpl/core/hpl_core_m0plus_base.c  .generated_files/c474cdd563bf8f2c35d0deb186e36d9579cbd0be.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o.d" -o ${OBJECTDIR}/hpl/core/hpl_core_m0plus_base.o hpl/core/hpl_core_m0plus_base.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/core/hpl_init.o: hpl/core/hpl_init.c  .generated_files/573001f7c69a2e5ff388bf151076bebdbbfd2866.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/core" 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o.d 
	@${RM} ${OBJECTDIR}/hpl/core/hpl_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/core/hpl_init.o.d" -o ${OBJECTDIR}/hpl/core/hpl_init.o hpl/core/hpl_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/divas/hpl_divas.o: hpl/divas/hpl_divas.c  .generated_files/e02a0d511f485598ab8c269a77283bfa5e06a29a.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/divas" 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o.d 
	@${RM} ${OBJECTDIR}/hpl/divas/hpl_divas.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/divas/hpl_divas.o.d" -o ${OBJECTDIR}/hpl/divas/hpl_divas.o hpl/divas/hpl_divas.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/dmac/hpl_dmac.o: hpl/dmac/hpl_dmac.c  .generated_files/e9c31bf5a635a54b71161d4e43f711b1adb0b7f.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/dmac" 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d 
	@${RM} ${OBJECTDIR}/hpl/dmac/hpl_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/dmac/hpl_dmac.o.d" -o ${OBJECTDIR}/hpl/dmac/hpl_dmac.o hpl/dmac/hpl_dmac.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/gclk/hpl_gclk.o: hpl/gclk/hpl_gclk.c  .generated_files/8bbcc75bfc71db4c4f00de15612d17afd2bc4503.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/gclk" 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/gclk/hpl_gclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/gclk/hpl_gclk.o.d" -o ${OBJECTDIR}/hpl/gclk/hpl_gclk.o hpl/gclk/hpl_gclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/mclk/hpl_mclk.o: hpl/mclk/hpl_mclk.c  .generated_files/f49cee07171b538413e6d992d9444e7efc24e25d.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/mclk" 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d 
	@${RM} ${OBJECTDIR}/hpl/mclk/hpl_mclk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/mclk/hpl_mclk.o.d" -o ${OBJECTDIR}/hpl/mclk/hpl_mclk.o hpl/mclk/hpl_mclk.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o: hpl/nvmctrl/hpl_nvmctrl.c  .generated_files/b921d1a2acf93d0b2600d0c466e3a403c61e5a79.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/nvmctrl" 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o.d" -o ${OBJECTDIR}/hpl/nvmctrl/hpl_nvmctrl.o hpl/nvmctrl/hpl_nvmctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o: hpl/osc32kctrl/hpl_osc32kctrl.c  .generated_files/9a55f9699d7f0a20074d7e06ebb2cba30f9699f0.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/osc32kctrl" 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o.d" -o ${OBJECTDIR}/hpl/osc32kctrl/hpl_osc32kctrl.o hpl/osc32kctrl/hpl_osc32kctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o: hpl/oscctrl/hpl_oscctrl.c  .generated_files/4a6edad1955b1e9b217dde8598440ed211aa7b7d.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/oscctrl" 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d 
	@${RM} ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o.d" -o ${OBJECTDIR}/hpl/oscctrl/hpl_oscctrl.o hpl/oscctrl/hpl_oscctrl.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/pm/hpl_pm.o: hpl/pm/hpl_pm.c  .generated_files/34d282ef985bab3f13f1b1080c92b6541555241b.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/pm" 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o.d 
	@${RM} ${OBJECTDIR}/hpl/pm/hpl_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/pm/hpl_pm.o.d" -o ${OBJECTDIR}/hpl/pm/hpl_pm.o hpl/pm/hpl_pm.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/sercom/hpl_sercom.o: hpl/sercom/hpl_sercom.c  .generated_files/ac886a4959b8cfe82773d6230674ad513ced7572.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/sercom" 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d 
	@${RM} ${OBJECTDIR}/hpl/sercom/hpl_sercom.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/sercom/hpl_sercom.o.d" -o ${OBJECTDIR}/hpl/sercom/hpl_sercom.o hpl/sercom/hpl_sercom.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/hpl/wdt/hpl_wdt.o: hpl/wdt/hpl_wdt.c  .generated_files/9f963f81a70ac2d1da80c5863fa8bf25b54c6ac9.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/hpl/wdt" 
	@${RM} ${OBJECTDIR}/hpl/wdt/hpl_wdt.o.d 
	@${RM} ${OBJECTDIR}/hpl/wdt/hpl_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/hpl/wdt/hpl_wdt.o.d" -o ${OBJECTDIR}/hpl/wdt/hpl_wdt.o hpl/wdt/hpl_wdt.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o: samc21n/gcc/gcc/startup_samc21.c  .generated_files/15017c6eb638a955fc107fcb1e82bc561cac08d2.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/gcc/startup_samc21.o samc21n/gcc/gcc/startup_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/samc21n/gcc/system_samc21.o: samc21n/gcc/system_samc21.c  .generated_files/caba8f30a691a962a79d40a169bd5804cce531ce.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}/samc21n/gcc" 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o.d 
	@${RM} ${OBJECTDIR}/samc21n/gcc/system_samc21.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/samc21n/gcc/system_samc21.o.d" -o ${OBJECTDIR}/samc21n/gcc/system_samc21.o samc21n/gcc/system_samc21.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  .generated_files/557bc92b8be3087504268f546de034f807ccd3d6.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/driver_init.o: driver_init.c  .generated_files/3cfea56fc062f3ec10321d78299af8a7d4e38f3a.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_init.o.d 
	@${RM} ${OBJECTDIR}/driver_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -mcpu=cortex-m0plus  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -mthumb -I "hpl/divas" -I "hpl/gclk" -I "hpl/sercom" -I "hpl/port" -I "hpl/mclk" -I "hpl/can" -I "hpl/osc32kctrl" -I "hpl/oscctrl" -I "./." -I "hpl/core" -I "hpl/dmac" -I "hpl/wdt" -I "examples" -I "hal/utils/include" -I "hal/include" -I "hpl/pm" -I "config" -I "hpl/nvmctrl" -I "hri"  -I "CMSIS/Core/Include" -I "samc21n/include"  -Os -ffunction-sections -mlong-calls -Wall -MP -MMD -MF "${OBJECTDIR}/driver_init.o.d" -o ${OBJECTDIR}/driver_init.o driver_init.c  -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/562bd0bdaea23932d69fc7c8eb696f4a10089b8b.flag .generated_files/6b48aca42059d35a4402648a21f35c2d2a255170.flag
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
