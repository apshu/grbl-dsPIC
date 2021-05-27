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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/grbl-DualCore.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/grbl-DualCore.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=grbl/eeprom.c grbl/gcode.c grbl/jog.c grbl/limits.c grbl/main.c grbl/motion_control.c grbl/nuts_bolts.c grbl/planner.c grbl/print.c grbl/probe.c grbl/protocol.c grbl/report.c grbl/serial.c grbl/settings.c grbl/spindle_control.c grbl/stepper.c grbl/system.c grbl/coolant_control.c grbl/atx.c grbl/btserial.c grbl/pwm_servo.c grbl/mcp23017.c grbl/user_interface.c mcc_generated_files/memory/flash.s mcc_generated_files/memory/flash_demo.c mcc_generated_files/reset.c mcc_generated_files/system.c mcc_generated_files/traps.c mcc_generated_files/clock.c mcc_generated_files/interrupt_manager.c mcc_generated_files/uart1.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/sccp1_compare.c mcc_generated_files/sccp2_tmr.c mcc_generated_files/sccp3_compare.c mcc_generated_files/tmr1.c mcc_generated_files/uart2.c mcc_generated_files/sccp4_compare.c mcc_generated_files/sccp7_compare.c mcc_generated_files/sccp5_compare.c mcc_generated_files/sccp6_compare.c mcc_generated_files/i2c1.c mcc_generated_files/adc1.c mcc_generated_files/sccp8_tmr.c grbl/dspic_specific.c grbl/dspic_specific_pwm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/grbl/eeprom.o ${OBJECTDIR}/grbl/gcode.o ${OBJECTDIR}/grbl/jog.o ${OBJECTDIR}/grbl/limits.o ${OBJECTDIR}/grbl/main.o ${OBJECTDIR}/grbl/motion_control.o ${OBJECTDIR}/grbl/nuts_bolts.o ${OBJECTDIR}/grbl/planner.o ${OBJECTDIR}/grbl/print.o ${OBJECTDIR}/grbl/probe.o ${OBJECTDIR}/grbl/protocol.o ${OBJECTDIR}/grbl/report.o ${OBJECTDIR}/grbl/serial.o ${OBJECTDIR}/grbl/settings.o ${OBJECTDIR}/grbl/spindle_control.o ${OBJECTDIR}/grbl/stepper.o ${OBJECTDIR}/grbl/system.o ${OBJECTDIR}/grbl/coolant_control.o ${OBJECTDIR}/grbl/atx.o ${OBJECTDIR}/grbl/btserial.o ${OBJECTDIR}/grbl/pwm_servo.o ${OBJECTDIR}/grbl/mcp23017.o ${OBJECTDIR}/grbl/user_interface.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o ${OBJECTDIR}/grbl/dspic_specific.o ${OBJECTDIR}/grbl/dspic_specific_pwm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/grbl/eeprom.o.d ${OBJECTDIR}/grbl/gcode.o.d ${OBJECTDIR}/grbl/jog.o.d ${OBJECTDIR}/grbl/limits.o.d ${OBJECTDIR}/grbl/main.o.d ${OBJECTDIR}/grbl/motion_control.o.d ${OBJECTDIR}/grbl/nuts_bolts.o.d ${OBJECTDIR}/grbl/planner.o.d ${OBJECTDIR}/grbl/print.o.d ${OBJECTDIR}/grbl/probe.o.d ${OBJECTDIR}/grbl/protocol.o.d ${OBJECTDIR}/grbl/report.o.d ${OBJECTDIR}/grbl/serial.o.d ${OBJECTDIR}/grbl/settings.o.d ${OBJECTDIR}/grbl/spindle_control.o.d ${OBJECTDIR}/grbl/stepper.o.d ${OBJECTDIR}/grbl/system.o.d ${OBJECTDIR}/grbl/coolant_control.o.d ${OBJECTDIR}/grbl/atx.o.d ${OBJECTDIR}/grbl/btserial.o.d ${OBJECTDIR}/grbl/pwm_servo.o.d ${OBJECTDIR}/grbl/mcp23017.o.d ${OBJECTDIR}/grbl/user_interface.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d ${OBJECTDIR}/mcc_generated_files/reset.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o.d ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o.d ${OBJECTDIR}/mcc_generated_files/tmr1.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d ${OBJECTDIR}/mcc_generated_files/i2c1.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o.d ${OBJECTDIR}/grbl/dspic_specific.o.d ${OBJECTDIR}/grbl/dspic_specific_pwm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/grbl/eeprom.o ${OBJECTDIR}/grbl/gcode.o ${OBJECTDIR}/grbl/jog.o ${OBJECTDIR}/grbl/limits.o ${OBJECTDIR}/grbl/main.o ${OBJECTDIR}/grbl/motion_control.o ${OBJECTDIR}/grbl/nuts_bolts.o ${OBJECTDIR}/grbl/planner.o ${OBJECTDIR}/grbl/print.o ${OBJECTDIR}/grbl/probe.o ${OBJECTDIR}/grbl/protocol.o ${OBJECTDIR}/grbl/report.o ${OBJECTDIR}/grbl/serial.o ${OBJECTDIR}/grbl/settings.o ${OBJECTDIR}/grbl/spindle_control.o ${OBJECTDIR}/grbl/stepper.o ${OBJECTDIR}/grbl/system.o ${OBJECTDIR}/grbl/coolant_control.o ${OBJECTDIR}/grbl/atx.o ${OBJECTDIR}/grbl/btserial.o ${OBJECTDIR}/grbl/pwm_servo.o ${OBJECTDIR}/grbl/mcp23017.o ${OBJECTDIR}/grbl/user_interface.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o ${OBJECTDIR}/mcc_generated_files/i2c1.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o ${OBJECTDIR}/grbl/dspic_specific.o ${OBJECTDIR}/grbl/dspic_specific_pwm.o

# Source Files
SOURCEFILES=grbl/eeprom.c grbl/gcode.c grbl/jog.c grbl/limits.c grbl/main.c grbl/motion_control.c grbl/nuts_bolts.c grbl/planner.c grbl/print.c grbl/probe.c grbl/protocol.c grbl/report.c grbl/serial.c grbl/settings.c grbl/spindle_control.c grbl/stepper.c grbl/system.c grbl/coolant_control.c grbl/atx.c grbl/btserial.c grbl/pwm_servo.c grbl/mcp23017.c grbl/user_interface.c mcc_generated_files/memory/flash.s mcc_generated_files/memory/flash_demo.c mcc_generated_files/reset.c mcc_generated_files/system.c mcc_generated_files/traps.c mcc_generated_files/clock.c mcc_generated_files/interrupt_manager.c mcc_generated_files/uart1.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/sccp1_compare.c mcc_generated_files/sccp2_tmr.c mcc_generated_files/sccp3_compare.c mcc_generated_files/tmr1.c mcc_generated_files/uart2.c mcc_generated_files/sccp4_compare.c mcc_generated_files/sccp7_compare.c mcc_generated_files/sccp5_compare.c mcc_generated_files/sccp6_compare.c mcc_generated_files/i2c1.c mcc_generated_files/adc1.c mcc_generated_files/sccp8_tmr.c grbl/dspic_specific.c grbl/dspic_specific_pwm.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/grbl-DualCore.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33CH512MP506
MP_LINKER_FILE_OPTION=,--script=p33CH512MP506.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/grbl/eeprom.o: grbl/eeprom.c  .generated_files/flags/default/1629d00eb73d921d12be5c6825290decfedc2b70 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/eeprom.o.d 
	@${RM} ${OBJECTDIR}/grbl/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/eeprom.c  -o ${OBJECTDIR}/grbl/eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/eeprom.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/gcode.o: grbl/gcode.c  .generated_files/flags/default/40c9886754f220da856aef4433638c1b40d15f12 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/gcode.o.d 
	@${RM} ${OBJECTDIR}/grbl/gcode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/gcode.c  -o ${OBJECTDIR}/grbl/gcode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/gcode.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/jog.o: grbl/jog.c  .generated_files/flags/default/f525e8263b62f8ad388f2be89e5cdeefb040123e .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/jog.o.d 
	@${RM} ${OBJECTDIR}/grbl/jog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/jog.c  -o ${OBJECTDIR}/grbl/jog.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/jog.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/limits.o: grbl/limits.c  .generated_files/flags/default/5bd3eeec4f91458fbcfb070a1780d5d5c7ed0081 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/limits.o.d 
	@${RM} ${OBJECTDIR}/grbl/limits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/limits.c  -o ${OBJECTDIR}/grbl/limits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/limits.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/main.o: grbl/main.c  .generated_files/flags/default/8fb8c102f1d264cfbbb241f8360f01af8a30a2da .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/main.o.d 
	@${RM} ${OBJECTDIR}/grbl/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/main.c  -o ${OBJECTDIR}/grbl/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/motion_control.o: grbl/motion_control.c  .generated_files/flags/default/d855f8560ffb8b547f43cfa5eeb9034560f0b34a .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/motion_control.o.d 
	@${RM} ${OBJECTDIR}/grbl/motion_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/motion_control.c  -o ${OBJECTDIR}/grbl/motion_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/motion_control.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/nuts_bolts.o: grbl/nuts_bolts.c  .generated_files/flags/default/b752b19d9c3ba1fc76547006c7c17cab061bd18e .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/nuts_bolts.o.d 
	@${RM} ${OBJECTDIR}/grbl/nuts_bolts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/nuts_bolts.c  -o ${OBJECTDIR}/grbl/nuts_bolts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/nuts_bolts.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/planner.o: grbl/planner.c  .generated_files/flags/default/3bda9f5c1e7da037d28399ea06592c985c505613 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/planner.o.d 
	@${RM} ${OBJECTDIR}/grbl/planner.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/planner.c  -o ${OBJECTDIR}/grbl/planner.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/planner.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/print.o: grbl/print.c  .generated_files/flags/default/428887d957feccd408a8e6d294530e5da87ff796 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/print.o.d 
	@${RM} ${OBJECTDIR}/grbl/print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/print.c  -o ${OBJECTDIR}/grbl/print.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/print.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/probe.o: grbl/probe.c  .generated_files/flags/default/cda99c9f8b90f1c76b233c3aa9ab6480d0ea33f6 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/probe.o.d 
	@${RM} ${OBJECTDIR}/grbl/probe.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/probe.c  -o ${OBJECTDIR}/grbl/probe.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/probe.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/protocol.o: grbl/protocol.c  .generated_files/flags/default/ef87e652dcc38385262283e11793988e53750651 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/protocol.o.d 
	@${RM} ${OBJECTDIR}/grbl/protocol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/protocol.c  -o ${OBJECTDIR}/grbl/protocol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/protocol.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/report.o: grbl/report.c  .generated_files/flags/default/657715622c07debff82bd63fffe4688734113775 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/report.o.d 
	@${RM} ${OBJECTDIR}/grbl/report.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/report.c  -o ${OBJECTDIR}/grbl/report.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/report.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/serial.o: grbl/serial.c  .generated_files/flags/default/ace8a163b378d2e6b64cbb7e366319126ef953ce .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/serial.o.d 
	@${RM} ${OBJECTDIR}/grbl/serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/serial.c  -o ${OBJECTDIR}/grbl/serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/serial.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/settings.o: grbl/settings.c  .generated_files/flags/default/69470a5f7e7d3fe53f7a383289cea5067d7f2e11 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/settings.o.d 
	@${RM} ${OBJECTDIR}/grbl/settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/settings.c  -o ${OBJECTDIR}/grbl/settings.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/settings.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/spindle_control.o: grbl/spindle_control.c  .generated_files/flags/default/cc54d07f000fb82e9288b17d272310028cdadf87 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/spindle_control.o.d 
	@${RM} ${OBJECTDIR}/grbl/spindle_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/spindle_control.c  -o ${OBJECTDIR}/grbl/spindle_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/spindle_control.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/stepper.o: grbl/stepper.c  .generated_files/flags/default/b19064c02296cec5b9b7f280f591becc8a28fb1d .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/stepper.o.d 
	@${RM} ${OBJECTDIR}/grbl/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/stepper.c  -o ${OBJECTDIR}/grbl/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/stepper.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/system.o: grbl/system.c  .generated_files/flags/default/66282b848f042164ca761fbbaed0b04414a60d34 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/system.o.d 
	@${RM} ${OBJECTDIR}/grbl/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/system.c  -o ${OBJECTDIR}/grbl/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/coolant_control.o: grbl/coolant_control.c  .generated_files/flags/default/3f037da491e8eb6b3a126b80b74dd260e3fc266e .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/coolant_control.o.d 
	@${RM} ${OBJECTDIR}/grbl/coolant_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/coolant_control.c  -o ${OBJECTDIR}/grbl/coolant_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/coolant_control.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/atx.o: grbl/atx.c  .generated_files/flags/default/f614e4a40abdda7bd5283d596ef3d4ebc3a923e .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/atx.o.d 
	@${RM} ${OBJECTDIR}/grbl/atx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/atx.c  -o ${OBJECTDIR}/grbl/atx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/atx.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/btserial.o: grbl/btserial.c  .generated_files/flags/default/e30d15ae8d4a7cfbcafcf58167c9d99a2926a4d6 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/btserial.o.d 
	@${RM} ${OBJECTDIR}/grbl/btserial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/btserial.c  -o ${OBJECTDIR}/grbl/btserial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/btserial.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/pwm_servo.o: grbl/pwm_servo.c  .generated_files/flags/default/d3dd724d5706bf6e7a19180dfbef65929ed512ac .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/pwm_servo.o.d 
	@${RM} ${OBJECTDIR}/grbl/pwm_servo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/pwm_servo.c  -o ${OBJECTDIR}/grbl/pwm_servo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/pwm_servo.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/mcp23017.o: grbl/mcp23017.c  .generated_files/flags/default/ddda82e41b158455d85b96762391eada423a5b04 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/mcp23017.o.d 
	@${RM} ${OBJECTDIR}/grbl/mcp23017.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/mcp23017.c  -o ${OBJECTDIR}/grbl/mcp23017.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/mcp23017.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/user_interface.o: grbl/user_interface.c  .generated_files/flags/default/50607a094fa5a5f575f6227ada325f427eec78e9 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/user_interface.o.d 
	@${RM} ${OBJECTDIR}/grbl/user_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/user_interface.c  -o ${OBJECTDIR}/grbl/user_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/user_interface.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/flags/default/504b55d7a5de63a7c3334c6ce18a51e317e63ae9 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/memory/flash_demo.c  -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/default/15a4899653285054febbae19e1ba5d3ec39a028b .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/1f51016f3318b9d28f17d3fdd68a000892459dd0 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/42be7d92374a4f5f435bbef6c7ff1e5a800e4d60 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/d735c25f5f47abbfdc0f04b1d740bf529deb7d03 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/62186f0f68b5d0d4c79898ad10794acc083e1277 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/f5e303f164fb10b60ed572cfb1b9df0a4c2fac4a .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/1a35afc532e5977131a3262f632e6b749cb555b0 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/1dd358c7582d9037aa54bc3e35f8225e140b0b7f .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp1_compare.o: mcc_generated_files/sccp1_compare.c  .generated_files/flags/default/697b78e0f6996548ddda10a3138406e7652a1ba6 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp1_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp1_compare.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o: mcc_generated_files/sccp2_tmr.c  .generated_files/flags/default/f179de98da61d4136ce099e56c57c6e7816f0440 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp2_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp3_compare.o: mcc_generated_files/sccp3_compare.c  .generated_files/flags/default/d636859c1bfbc41e739f8d0a4ab0e78179227c6a .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp3_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp3_compare.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/e2f71797d0e8b8fff27d8c006eec0695b0b4fc32 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/7b75e7b5a50832e0ebc260ed80a70537158f0487 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp4_compare.o: mcc_generated_files/sccp4_compare.c  .generated_files/flags/default/c2556c8fa482a903d137b6c30c3bdc66ec0f1a53 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp4_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp7_compare.o: mcc_generated_files/sccp7_compare.c  .generated_files/flags/default/ee6bacb62e282ac7102960c6108024366d6c4f63 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp7_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp5_compare.o: mcc_generated_files/sccp5_compare.c  .generated_files/flags/default/fa65702f4bf4e96f26e73cd1be93054de181aaa4 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp5_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp6_compare.o: mcc_generated_files/sccp6_compare.c  .generated_files/flags/default/86ba3be350c00dfe1286b5b8022db74226838ae9 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp6_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/163d731f128774446fd1a6a4c8c0fab9e407372f .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/3f2a378f5cda6b127b135daceeb59f2bf92bb0ab .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o: mcc_generated_files/sccp8_tmr.c  .generated_files/flags/default/5f8dac46f7455035c0348f7bf38a6b3ece5a3309 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp8_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/dspic_specific.o: grbl/dspic_specific.c  .generated_files/flags/default/ba1206e256d4fbf5ed15a0b53526a2c891ffd4bf .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific.o.d 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/dspic_specific.c  -o ${OBJECTDIR}/grbl/dspic_specific.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/dspic_specific.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/dspic_specific_pwm.o: grbl/dspic_specific_pwm.c  .generated_files/flags/default/ad755ddecb70400c39efb13e7e4605d1cc8c5f00 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific_pwm.o.d 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/dspic_specific_pwm.c  -o ${OBJECTDIR}/grbl/dspic_specific_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/dspic_specific_pwm.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/grbl/eeprom.o: grbl/eeprom.c  .generated_files/flags/default/37472c7d5b38313bd079550989ac48abcf9d44d5 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/eeprom.o.d 
	@${RM} ${OBJECTDIR}/grbl/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/eeprom.c  -o ${OBJECTDIR}/grbl/eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/eeprom.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/gcode.o: grbl/gcode.c  .generated_files/flags/default/9fd437473c36661d39a333508aee17ae2298e24e .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/gcode.o.d 
	@${RM} ${OBJECTDIR}/grbl/gcode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/gcode.c  -o ${OBJECTDIR}/grbl/gcode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/gcode.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/jog.o: grbl/jog.c  .generated_files/flags/default/ec210b27355ad68fc6be9b8f08a2c5ed9be8842f .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/jog.o.d 
	@${RM} ${OBJECTDIR}/grbl/jog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/jog.c  -o ${OBJECTDIR}/grbl/jog.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/jog.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/limits.o: grbl/limits.c  .generated_files/flags/default/1973d66dabbdb7d3841ec858b7beab4a1655b616 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/limits.o.d 
	@${RM} ${OBJECTDIR}/grbl/limits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/limits.c  -o ${OBJECTDIR}/grbl/limits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/limits.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/main.o: grbl/main.c  .generated_files/flags/default/17d8709146caf1ab246b33d41cc11cbe26118eb6 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/main.o.d 
	@${RM} ${OBJECTDIR}/grbl/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/main.c  -o ${OBJECTDIR}/grbl/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/motion_control.o: grbl/motion_control.c  .generated_files/flags/default/2521fe7a9f248909db79c1b93eb81f8d2ee8499d .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/motion_control.o.d 
	@${RM} ${OBJECTDIR}/grbl/motion_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/motion_control.c  -o ${OBJECTDIR}/grbl/motion_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/motion_control.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/nuts_bolts.o: grbl/nuts_bolts.c  .generated_files/flags/default/18eb20dc4ec5361b327b6eef7f9d9ea1a252d38f .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/nuts_bolts.o.d 
	@${RM} ${OBJECTDIR}/grbl/nuts_bolts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/nuts_bolts.c  -o ${OBJECTDIR}/grbl/nuts_bolts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/nuts_bolts.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/planner.o: grbl/planner.c  .generated_files/flags/default/702a5d0f8aae96f5138c78e5823ec80bffaf6c85 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/planner.o.d 
	@${RM} ${OBJECTDIR}/grbl/planner.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/planner.c  -o ${OBJECTDIR}/grbl/planner.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/planner.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/print.o: grbl/print.c  .generated_files/flags/default/32d32cfee739f8771e8825ff290811a4f41148e2 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/print.o.d 
	@${RM} ${OBJECTDIR}/grbl/print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/print.c  -o ${OBJECTDIR}/grbl/print.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/print.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/probe.o: grbl/probe.c  .generated_files/flags/default/d438966d376f6ca0a51288d6a84987d0e34430ee .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/probe.o.d 
	@${RM} ${OBJECTDIR}/grbl/probe.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/probe.c  -o ${OBJECTDIR}/grbl/probe.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/probe.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/protocol.o: grbl/protocol.c  .generated_files/flags/default/edaf8332bddd18692b8840bafb79c2ffb9a18337 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/protocol.o.d 
	@${RM} ${OBJECTDIR}/grbl/protocol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/protocol.c  -o ${OBJECTDIR}/grbl/protocol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/protocol.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/report.o: grbl/report.c  .generated_files/flags/default/f889d5e2ad240957f56fc1aac5a78d5d46867b31 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/report.o.d 
	@${RM} ${OBJECTDIR}/grbl/report.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/report.c  -o ${OBJECTDIR}/grbl/report.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/report.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/serial.o: grbl/serial.c  .generated_files/flags/default/cf8d94fc2d78d0eb067dab56c71b43ff38de4bf3 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/serial.o.d 
	@${RM} ${OBJECTDIR}/grbl/serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/serial.c  -o ${OBJECTDIR}/grbl/serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/serial.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/settings.o: grbl/settings.c  .generated_files/flags/default/ec0886e1d0e30ef57b9024f48c73d9f5f6f40592 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/settings.o.d 
	@${RM} ${OBJECTDIR}/grbl/settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/settings.c  -o ${OBJECTDIR}/grbl/settings.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/settings.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/spindle_control.o: grbl/spindle_control.c  .generated_files/flags/default/70c3e06b9082d548598c1760847a8c39aaa7f23f .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/spindle_control.o.d 
	@${RM} ${OBJECTDIR}/grbl/spindle_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/spindle_control.c  -o ${OBJECTDIR}/grbl/spindle_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/spindle_control.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/stepper.o: grbl/stepper.c  .generated_files/flags/default/af013d29c59650aec2b5a79ca8d4d9cb4afa99ea .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/stepper.o.d 
	@${RM} ${OBJECTDIR}/grbl/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/stepper.c  -o ${OBJECTDIR}/grbl/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/stepper.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/system.o: grbl/system.c  .generated_files/flags/default/ecc1af4c444d2277d982f3b5255654de16236e9f .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/system.o.d 
	@${RM} ${OBJECTDIR}/grbl/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/system.c  -o ${OBJECTDIR}/grbl/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/coolant_control.o: grbl/coolant_control.c  .generated_files/flags/default/dc2b1e0260b0c417088af58a83f5ec30659dc76d .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/coolant_control.o.d 
	@${RM} ${OBJECTDIR}/grbl/coolant_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/coolant_control.c  -o ${OBJECTDIR}/grbl/coolant_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/coolant_control.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/atx.o: grbl/atx.c  .generated_files/flags/default/e6b2b667b84ae589a7d1279deb4b426789b469e7 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/atx.o.d 
	@${RM} ${OBJECTDIR}/grbl/atx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/atx.c  -o ${OBJECTDIR}/grbl/atx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/atx.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/btserial.o: grbl/btserial.c  .generated_files/flags/default/47300049fec6c3974d7bf66d8e879145ca7bfe79 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/btserial.o.d 
	@${RM} ${OBJECTDIR}/grbl/btserial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/btserial.c  -o ${OBJECTDIR}/grbl/btserial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/btserial.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/pwm_servo.o: grbl/pwm_servo.c  .generated_files/flags/default/a7024f3a916a9101afbc893cb33335ebf12f5f34 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/pwm_servo.o.d 
	@${RM} ${OBJECTDIR}/grbl/pwm_servo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/pwm_servo.c  -o ${OBJECTDIR}/grbl/pwm_servo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/pwm_servo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/mcp23017.o: grbl/mcp23017.c  .generated_files/flags/default/fac4c919d5743f37ceb78195d288daac37847981 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/mcp23017.o.d 
	@${RM} ${OBJECTDIR}/grbl/mcp23017.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/mcp23017.c  -o ${OBJECTDIR}/grbl/mcp23017.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/mcp23017.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/user_interface.o: grbl/user_interface.c  .generated_files/flags/default/8b4062377435dff3bda9d2ec31dc4f068a8192c5 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/user_interface.o.d 
	@${RM} ${OBJECTDIR}/grbl/user_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/user_interface.c  -o ${OBJECTDIR}/grbl/user_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/user_interface.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/flags/default/fdab320f5020d9caece9b2ab7de38492f3f8654 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/memory/flash_demo.c  -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/default/7b7afbe1e1b3004cd6aade821d4f1e9d3256cfd3 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/f5f48894b6e4e384802a9e69bb44a34e49233ceb .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/53b2684b6a4d0a919f43681476c68241b6389b15 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/b24afd8d57be02e04b5cba8dc2d329e21199a4c0 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/1cacd1b12c613853d938a06439757b94176536d0 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/b75179894cb63da4e041b28f780f43b9f2691114 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/6a17affdb93199c87d297867cee1f617395dec7b .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/e302e0a133250afd08a52be01b2f36f0c3c02330 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp1_compare.o: mcc_generated_files/sccp1_compare.c  .generated_files/flags/default/5473f0a5b7110c8269ed90c5badea0e16fbf8baa .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp1_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp1_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o: mcc_generated_files/sccp2_tmr.c  .generated_files/flags/default/158017c8c08b47ae4441fa3ed59d0d5999bf0f7e .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp2_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp3_compare.o: mcc_generated_files/sccp3_compare.c  .generated_files/flags/default/f6443672eb798aa41b95e493d81aeeaa251b12cf .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp3_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp3_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/c05c8e033cb6d8a8f7ac35f808faca6486308ad3 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/c6f4787c483ef43934add2aea9fb568ee4a5c905 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp4_compare.o: mcc_generated_files/sccp4_compare.c  .generated_files/flags/default/28a640ea32cd4b88c329d391d6a109982a4bb9a3 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp4_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp7_compare.o: mcc_generated_files/sccp7_compare.c  .generated_files/flags/default/46fa9102d106e8f0be5171e56ce92a98846cc8c7 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp7_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp5_compare.o: mcc_generated_files/sccp5_compare.c  .generated_files/flags/default/195809402fdcc9ecde9b3ec19543d7cb35b3cd12 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp5_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp6_compare.o: mcc_generated_files/sccp6_compare.c  .generated_files/flags/default/5accffe9607f06e40d298a7d7fec89cdd60ec19e .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp6_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/flags/default/8e332b85485cf755a2d465d6d069c3fe9d68eee6 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/625764f29660870fe4b6fee80012bf3f4d9c80d2 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o: mcc_generated_files/sccp8_tmr.c  .generated_files/flags/default/42a8fe93fceb924da5fca0f8ab05c570af2a92e8 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp8_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/dspic_specific.o: grbl/dspic_specific.c  .generated_files/flags/default/adc6835428f36a997a1876de2bea54a227d218a .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific.o.d 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/dspic_specific.c  -o ${OBJECTDIR}/grbl/dspic_specific.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/dspic_specific.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/dspic_specific_pwm.o: grbl/dspic_specific_pwm.c  .generated_files/flags/default/1cdbecdd3478761a545e103f1a56f678433fcc91 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific_pwm.o.d 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/dspic_specific_pwm.c  -o ${OBJECTDIR}/grbl/dspic_specific_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/dspic_specific_pwm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.s  .generated_files/flags/default/a6480fd651dd6221853675426709b3b548f3cd8a .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/memory/flash.s  -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/memory/flash.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.s  .generated_files/flags/default/22f11795079d23f61e78e44f640cefbac9be5e08 .generated_files/flags/default/73d7ebab2d77a8022bd7d822c049b80035c43207
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/memory/flash.s  -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/memory/flash.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/grbl-DualCore.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/grbl-DualCore.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/grbl-DualCore.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/grbl-DualCore.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/grbl-DualCore.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
