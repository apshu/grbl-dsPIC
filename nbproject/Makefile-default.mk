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
${OBJECTDIR}/grbl/eeprom.o: grbl/eeprom.c  .generated_files/bc81b3e52b18562d213ef73f377c67fe73801398.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/eeprom.o.d 
	@${RM} ${OBJECTDIR}/grbl/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/eeprom.c  -o ${OBJECTDIR}/grbl/eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/eeprom.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/gcode.o: grbl/gcode.c  .generated_files/67442a5cead72876216ba5a8f0a1c2ee9612b108.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/gcode.o.d 
	@${RM} ${OBJECTDIR}/grbl/gcode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/gcode.c  -o ${OBJECTDIR}/grbl/gcode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/gcode.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/jog.o: grbl/jog.c  .generated_files/4818b4293a4c3bf728590e19726fc9f22bfeaf48.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/jog.o.d 
	@${RM} ${OBJECTDIR}/grbl/jog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/jog.c  -o ${OBJECTDIR}/grbl/jog.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/jog.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/limits.o: grbl/limits.c  .generated_files/dad96570769d76c2d4793dfa4637885e7970d9dc.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/limits.o.d 
	@${RM} ${OBJECTDIR}/grbl/limits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/limits.c  -o ${OBJECTDIR}/grbl/limits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/limits.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/main.o: grbl/main.c  .generated_files/de6d6e45efeea461102a2eb464a07c6a2b5c076e.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/main.o.d 
	@${RM} ${OBJECTDIR}/grbl/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/main.c  -o ${OBJECTDIR}/grbl/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/motion_control.o: grbl/motion_control.c  .generated_files/38632feeb6cd227a32ea7931a466a0589de712eb.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/motion_control.o.d 
	@${RM} ${OBJECTDIR}/grbl/motion_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/motion_control.c  -o ${OBJECTDIR}/grbl/motion_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/motion_control.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/nuts_bolts.o: grbl/nuts_bolts.c  .generated_files/73915bccdd3d057ac90ffe13335350c5b7907964.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/nuts_bolts.o.d 
	@${RM} ${OBJECTDIR}/grbl/nuts_bolts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/nuts_bolts.c  -o ${OBJECTDIR}/grbl/nuts_bolts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/nuts_bolts.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/planner.o: grbl/planner.c  .generated_files/85d617898ba224cf7727ce415b3db4bad8342141.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/planner.o.d 
	@${RM} ${OBJECTDIR}/grbl/planner.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/planner.c  -o ${OBJECTDIR}/grbl/planner.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/planner.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/print.o: grbl/print.c  .generated_files/e90ae9836eff1554e8dee5ab9911894d3bad42c1.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/print.o.d 
	@${RM} ${OBJECTDIR}/grbl/print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/print.c  -o ${OBJECTDIR}/grbl/print.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/print.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/probe.o: grbl/probe.c  .generated_files/d71d6d933dfb74bb36ade3d335dd789fe3bd7603.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/probe.o.d 
	@${RM} ${OBJECTDIR}/grbl/probe.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/probe.c  -o ${OBJECTDIR}/grbl/probe.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/probe.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/protocol.o: grbl/protocol.c  .generated_files/cbe28ea9fdd82ed7dfff1494cf578f56eddb9d5a.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/protocol.o.d 
	@${RM} ${OBJECTDIR}/grbl/protocol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/protocol.c  -o ${OBJECTDIR}/grbl/protocol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/protocol.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/report.o: grbl/report.c  .generated_files/68aead5f489ea187c9827dcd36832cbb4bae0b93.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/report.o.d 
	@${RM} ${OBJECTDIR}/grbl/report.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/report.c  -o ${OBJECTDIR}/grbl/report.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/report.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/serial.o: grbl/serial.c  .generated_files/154e96e9ac2becc24757c0f96ada04d16d38ee57.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/serial.o.d 
	@${RM} ${OBJECTDIR}/grbl/serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/serial.c  -o ${OBJECTDIR}/grbl/serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/serial.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/settings.o: grbl/settings.c  .generated_files/97d3f1a940c469d54a0dd57b42507359e62e728f.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/settings.o.d 
	@${RM} ${OBJECTDIR}/grbl/settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/settings.c  -o ${OBJECTDIR}/grbl/settings.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/settings.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/spindle_control.o: grbl/spindle_control.c  .generated_files/359b4ae0a5fe4416d67d011494a71724cc02c17b.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/spindle_control.o.d 
	@${RM} ${OBJECTDIR}/grbl/spindle_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/spindle_control.c  -o ${OBJECTDIR}/grbl/spindle_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/spindle_control.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/stepper.o: grbl/stepper.c  .generated_files/6d03550ed8d08d1742ee9ea629bdb04602b19d64.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/stepper.o.d 
	@${RM} ${OBJECTDIR}/grbl/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/stepper.c  -o ${OBJECTDIR}/grbl/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/stepper.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/system.o: grbl/system.c  .generated_files/bcd2de6c40ef646684e4ad658df3e02e0dcf4bae.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/system.o.d 
	@${RM} ${OBJECTDIR}/grbl/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/system.c  -o ${OBJECTDIR}/grbl/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/coolant_control.o: grbl/coolant_control.c  .generated_files/2e7b321418a26c8ab271104941ed01847366a9a5.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/coolant_control.o.d 
	@${RM} ${OBJECTDIR}/grbl/coolant_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/coolant_control.c  -o ${OBJECTDIR}/grbl/coolant_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/coolant_control.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/atx.o: grbl/atx.c  .generated_files/c356ff92f1059b3fed21bb48ba78fa87441d7222.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/atx.o.d 
	@${RM} ${OBJECTDIR}/grbl/atx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/atx.c  -o ${OBJECTDIR}/grbl/atx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/atx.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/btserial.o: grbl/btserial.c  .generated_files/8454cbdf2a133b4b6fc627ff45f526a6bb6ec79.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/btserial.o.d 
	@${RM} ${OBJECTDIR}/grbl/btserial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/btserial.c  -o ${OBJECTDIR}/grbl/btserial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/btserial.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/pwm_servo.o: grbl/pwm_servo.c  .generated_files/eb769c3a2722a78232c7532150951a315168f4d7.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/pwm_servo.o.d 
	@${RM} ${OBJECTDIR}/grbl/pwm_servo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/pwm_servo.c  -o ${OBJECTDIR}/grbl/pwm_servo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/pwm_servo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/mcp23017.o: grbl/mcp23017.c  .generated_files/88d38142c5b19d580a00af22007b224b8326b151.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/mcp23017.o.d 
	@${RM} ${OBJECTDIR}/grbl/mcp23017.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/mcp23017.c  -o ${OBJECTDIR}/grbl/mcp23017.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/mcp23017.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/user_interface.o: grbl/user_interface.c  .generated_files/6470ce250d88932b115025d4b6a4460f12b2e8b5.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/user_interface.o.d 
	@${RM} ${OBJECTDIR}/grbl/user_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/user_interface.c  -o ${OBJECTDIR}/grbl/user_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/user_interface.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/917b0ec9c43876d3d8c8e6160969f591509fc1fb.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/memory/flash_demo.c  -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/ac69458eb591d5cf769d1a8bb30e1469473e40ce.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/d553ba04b1b256e36681c671463a3dc67e2ae33c.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/e3cfcef0eb1483e24ffe587b2e7ef11249228cda.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/db4469f6e3ab5186caae97c28fad132548f88ecb.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/26746694637daedafb3f6c7f86aaccdb74244a0a.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/45a3a67894a0b09dfc0b578d3b02024a875c87c4.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/8f2dd9860bf476b38379de468d820512e1caa9bc.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/8ad5968943a774ca11498aa4d541c64b28b190d0.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp1_compare.o: mcc_generated_files/sccp1_compare.c  .generated_files/ddd20a38004bdd923d533d78c6e5380af1561a7c.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp1_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp1_compare.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o: mcc_generated_files/sccp2_tmr.c  .generated_files/a9eca9a873bae3e1b7584c3815645359375254b6.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp2_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp3_compare.o: mcc_generated_files/sccp3_compare.c  .generated_files/ad1a218392fd0ad3640502a741cf2d32a5e901a5.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp3_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp3_compare.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/8c93d18443e617f3252fe46f6c147c0b9597390e.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/ae5520b96ee5709561fd5149c0804775c21952e7.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp4_compare.o: mcc_generated_files/sccp4_compare.c  .generated_files/cc5dd07abac84f5b398b51a86a2c84967bb8b620.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp4_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp7_compare.o: mcc_generated_files/sccp7_compare.c  .generated_files/2aaf06a99f6337c91f5b77cde0f5005214c44064.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp7_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp5_compare.o: mcc_generated_files/sccp5_compare.c  .generated_files/61f3398d3000e677d0f0358a448d37eb1b32523d.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp5_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp6_compare.o: mcc_generated_files/sccp6_compare.c  .generated_files/778d7c7d0468824f6e8a66cd985e76413a85bc8a.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp6_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/9c0d3b22c6dd06fd7b144880289b498e85130392.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/30c4aaa81781cfd90f57a94a2a03371b43d5e4e.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o: mcc_generated_files/sccp8_tmr.c  .generated_files/eeb6a56d1c7eaad55d54e532b35d98f24eb10d56.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp8_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/dspic_specific.o: grbl/dspic_specific.c  .generated_files/b50dd04b79349b45673bc46eabe80101febb7c4f.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific.o.d 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/dspic_specific.c  -o ${OBJECTDIR}/grbl/dspic_specific.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/dspic_specific.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/dspic_specific_pwm.o: grbl/dspic_specific_pwm.c  .generated_files/ff187f52e52ecb0bda6e2320af204f6f4ab33e65.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific_pwm.o.d 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/dspic_specific_pwm.c  -o ${OBJECTDIR}/grbl/dspic_specific_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/dspic_specific_pwm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/grbl/eeprom.o: grbl/eeprom.c  .generated_files/37472c7d5b38313bd079550989ac48abcf9d44d5.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/eeprom.o.d 
	@${RM} ${OBJECTDIR}/grbl/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/eeprom.c  -o ${OBJECTDIR}/grbl/eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/eeprom.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/gcode.o: grbl/gcode.c  .generated_files/9fd437473c36661d39a333508aee17ae2298e24e.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/gcode.o.d 
	@${RM} ${OBJECTDIR}/grbl/gcode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/gcode.c  -o ${OBJECTDIR}/grbl/gcode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/gcode.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/jog.o: grbl/jog.c  .generated_files/ec210b27355ad68fc6be9b8f08a2c5ed9be8842f.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/jog.o.d 
	@${RM} ${OBJECTDIR}/grbl/jog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/jog.c  -o ${OBJECTDIR}/grbl/jog.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/jog.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/limits.o: grbl/limits.c  .generated_files/1973d66dabbdb7d3841ec858b7beab4a1655b616.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/limits.o.d 
	@${RM} ${OBJECTDIR}/grbl/limits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/limits.c  -o ${OBJECTDIR}/grbl/limits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/limits.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/main.o: grbl/main.c  .generated_files/17d8709146caf1ab246b33d41cc11cbe26118eb6.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/main.o.d 
	@${RM} ${OBJECTDIR}/grbl/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/main.c  -o ${OBJECTDIR}/grbl/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/motion_control.o: grbl/motion_control.c  .generated_files/2521fe7a9f248909db79c1b93eb81f8d2ee8499d.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/motion_control.o.d 
	@${RM} ${OBJECTDIR}/grbl/motion_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/motion_control.c  -o ${OBJECTDIR}/grbl/motion_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/motion_control.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/nuts_bolts.o: grbl/nuts_bolts.c  .generated_files/18eb20dc4ec5361b327b6eef7f9d9ea1a252d38f.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/nuts_bolts.o.d 
	@${RM} ${OBJECTDIR}/grbl/nuts_bolts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/nuts_bolts.c  -o ${OBJECTDIR}/grbl/nuts_bolts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/nuts_bolts.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/planner.o: grbl/planner.c  .generated_files/702a5d0f8aae96f5138c78e5823ec80bffaf6c85.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/planner.o.d 
	@${RM} ${OBJECTDIR}/grbl/planner.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/planner.c  -o ${OBJECTDIR}/grbl/planner.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/planner.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/print.o: grbl/print.c  .generated_files/32d32cfee739f8771e8825ff290811a4f41148e2.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/print.o.d 
	@${RM} ${OBJECTDIR}/grbl/print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/print.c  -o ${OBJECTDIR}/grbl/print.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/print.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/probe.o: grbl/probe.c  .generated_files/d438966d376f6ca0a51288d6a84987d0e34430ee.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/probe.o.d 
	@${RM} ${OBJECTDIR}/grbl/probe.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/probe.c  -o ${OBJECTDIR}/grbl/probe.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/probe.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/protocol.o: grbl/protocol.c  .generated_files/edaf8332bddd18692b8840bafb79c2ffb9a18337.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/protocol.o.d 
	@${RM} ${OBJECTDIR}/grbl/protocol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/protocol.c  -o ${OBJECTDIR}/grbl/protocol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/protocol.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/report.o: grbl/report.c  .generated_files/f889d5e2ad240957f56fc1aac5a78d5d46867b31.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/report.o.d 
	@${RM} ${OBJECTDIR}/grbl/report.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/report.c  -o ${OBJECTDIR}/grbl/report.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/report.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/serial.o: grbl/serial.c  .generated_files/cf8d94fc2d78d0eb067dab56c71b43ff38de4bf3.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/serial.o.d 
	@${RM} ${OBJECTDIR}/grbl/serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/serial.c  -o ${OBJECTDIR}/grbl/serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/serial.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/settings.o: grbl/settings.c  .generated_files/ec0886e1d0e30ef57b9024f48c73d9f5f6f40592.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/settings.o.d 
	@${RM} ${OBJECTDIR}/grbl/settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/settings.c  -o ${OBJECTDIR}/grbl/settings.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/settings.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/spindle_control.o: grbl/spindle_control.c  .generated_files/70c3e06b9082d548598c1760847a8c39aaa7f23f.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/spindle_control.o.d 
	@${RM} ${OBJECTDIR}/grbl/spindle_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/spindle_control.c  -o ${OBJECTDIR}/grbl/spindle_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/spindle_control.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/stepper.o: grbl/stepper.c  .generated_files/af013d29c59650aec2b5a79ca8d4d9cb4afa99ea.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/stepper.o.d 
	@${RM} ${OBJECTDIR}/grbl/stepper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/stepper.c  -o ${OBJECTDIR}/grbl/stepper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/stepper.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/system.o: grbl/system.c  .generated_files/ecc1af4c444d2277d982f3b5255654de16236e9f.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/system.o.d 
	@${RM} ${OBJECTDIR}/grbl/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/system.c  -o ${OBJECTDIR}/grbl/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/coolant_control.o: grbl/coolant_control.c  .generated_files/dc2b1e0260b0c417088af58a83f5ec30659dc76d.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/coolant_control.o.d 
	@${RM} ${OBJECTDIR}/grbl/coolant_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/coolant_control.c  -o ${OBJECTDIR}/grbl/coolant_control.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/coolant_control.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/atx.o: grbl/atx.c  .generated_files/e6b2b667b84ae589a7d1279deb4b426789b469e7.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/atx.o.d 
	@${RM} ${OBJECTDIR}/grbl/atx.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/atx.c  -o ${OBJECTDIR}/grbl/atx.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/atx.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/btserial.o: grbl/btserial.c  .generated_files/47300049fec6c3974d7bf66d8e879145ca7bfe79.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/btserial.o.d 
	@${RM} ${OBJECTDIR}/grbl/btserial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/btserial.c  -o ${OBJECTDIR}/grbl/btserial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/btserial.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/pwm_servo.o: grbl/pwm_servo.c  .generated_files/a7024f3a916a9101afbc893cb33335ebf12f5f34.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/pwm_servo.o.d 
	@${RM} ${OBJECTDIR}/grbl/pwm_servo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/pwm_servo.c  -o ${OBJECTDIR}/grbl/pwm_servo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/pwm_servo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/mcp23017.o: grbl/mcp23017.c  .generated_files/fac4c919d5743f37ceb78195d288daac37847981.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/mcp23017.o.d 
	@${RM} ${OBJECTDIR}/grbl/mcp23017.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/mcp23017.c  -o ${OBJECTDIR}/grbl/mcp23017.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/mcp23017.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/user_interface.o: grbl/user_interface.c  .generated_files/8b4062377435dff3bda9d2ec31dc4f068a8192c5.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/user_interface.o.d 
	@${RM} ${OBJECTDIR}/grbl/user_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/user_interface.c  -o ${OBJECTDIR}/grbl/user_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/user_interface.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o: mcc_generated_files/memory/flash_demo.c  .generated_files/fdab320f5020d9caece9b2ab7de38492f3f8654.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/memory/flash_demo.c  -o ${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/memory/flash_demo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/7b7afbe1e1b3004cd6aade821d4f1e9d3256cfd3.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/f5f48894b6e4e384802a9e69bb44a34e49233ceb.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/53b2684b6a4d0a919f43681476c68241b6389b15.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/b24afd8d57be02e04b5cba8dc2d329e21199a4c0.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/1cacd1b12c613853d938a06439757b94176536d0.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/b75179894cb63da4e041b28f780f43b9f2691114.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/6a17affdb93199c87d297867cee1f617395dec7b.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/e302e0a133250afd08a52be01b2f36f0c3c02330.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp1_compare.o: mcc_generated_files/sccp1_compare.c  .generated_files/5473f0a5b7110c8269ed90c5badea0e16fbf8baa.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp1_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp1_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp1_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o: mcc_generated_files/sccp2_tmr.c  .generated_files/158017c8c08b47ae4441fa3ed59d0d5999bf0f7e.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp2_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp3_compare.o: mcc_generated_files/sccp3_compare.c  .generated_files/f6443672eb798aa41b95e493d81aeeaa251b12cf.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp3_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp3_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp3_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/c05c8e033cb6d8a8f7ac35f808faca6486308ad3.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/c6f4787c483ef43934add2aea9fb568ee4a5c905.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp4_compare.o: mcc_generated_files/sccp4_compare.c  .generated_files/28a640ea32cd4b88c329d391d6a109982a4bb9a3.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp4_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp4_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp4_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp7_compare.o: mcc_generated_files/sccp7_compare.c  .generated_files/46fa9102d106e8f0be5171e56ce92a98846cc8c7.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp7_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp7_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp7_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp5_compare.o: mcc_generated_files/sccp5_compare.c  .generated_files/195809402fdcc9ecde9b3ec19543d7cb35b3cd12.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp5_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp5_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp5_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp6_compare.o: mcc_generated_files/sccp6_compare.c  .generated_files/5accffe9607f06e40d298a7d7fec89cdd60ec19e.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp6_compare.c  -o ${OBJECTDIR}/mcc_generated_files/sccp6_compare.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp6_compare.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1.o: mcc_generated_files/i2c1.c  .generated_files/8e332b85485cf755a2d465d6d069c3fe9d68eee6.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/625764f29660870fe4b6fee80012bf3f4d9c80d2.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o: mcc_generated_files/sccp8_tmr.c  .generated_files/42a8fe93fceb924da5fca0f8ab05c570af2a92e8.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp8_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp8_tmr.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/dspic_specific.o: grbl/dspic_specific.c  .generated_files/adc6835428f36a997a1876de2bea54a227d218a.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific.o.d 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/dspic_specific.c  -o ${OBJECTDIR}/grbl/dspic_specific.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/dspic_specific.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/grbl/dspic_specific_pwm.o: grbl/dspic_specific_pwm.c  .generated_files/1cdbecdd3478761a545e103f1a56f678433fcc91.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/grbl" 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific_pwm.o.d 
	@${RM} ${OBJECTDIR}/grbl/dspic_specific_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  grbl/dspic_specific_pwm.c  -o ${OBJECTDIR}/grbl/dspic_specific_pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/grbl/dspic_specific_pwm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -fno-short-double -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.s  .generated_files/96ff60fcd6906e9cd79c65970dcc1126c3a24bf2.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/memory/flash.s  -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/memory/flash.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.s  .generated_files/22f11795079d23f61e78e44f640cefbac9be5e08.flag .generated_files/524e818383176be48c2b4639519fcc2325884bf9.flag
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
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/grbl-DualCore.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
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
