/* 
 * File:   dspic_specific.h
 * Author: M91541
 *
 * Created on July 30, 2019, 1:03 PM
 */

#ifndef DSPIC_SPECIFIC_H
#define	DSPIC_SPECIFIC_H

#ifdef	__cplusplus
extern "C" {
#endif

#define F_CPU   _XTAL_FREQ
#define FCY     F_CPU
#define TIMER0_TICKS_PER_MICROSECOND  ((F_CPU/1000000)/2)
#define TIMER1_TICKS_PER_MICROSECOND   ((F_CPU/1000000)/2)
#define PWM_CLOCK_DIVIDED_FREQUENCY    (F_CPU/2/4)
#define PWM1_CLOCK_DIVIDED_FREQUENCY   (PWM_CLOCK_DIVIDED_FREQUENCY)
#define PWMHR_CLOCK_DIVIDED_FREQUENCY  (3125000UL)
#define PWMHR0_CLOCK_DIVIDED_FREQUENCY (PWMHR_CLOCK_DIVIDED_FREQUENCY)
#define PWMHR1_CLOCK_DIVIDED_FREQUENCY (PWMHR_CLOCK_DIVIDED_FREQUENCY)
#define PWMHR2_CLOCK_DIVIDED_FREQUENCY (PWMHR_CLOCK_DIVIDED_FREQUENCY)
#define PWMHR3_CLOCK_DIVIDED_FREQUENCY (PWMHR_CLOCK_DIVIDED_FREQUENCY)
#define PWMHR4_CLOCK_DIVIDED_FREQUENCY (PWMHR_CLOCK_DIVIDED_FREQUENCY)
#define PWMHR5_CLOCK_DIVIDED_FREQUENCY (PWMHR_CLOCK_DIVIDED_FREQUENCY)
#define PWMHR6_CLOCK_DIVIDED_FREQUENCY (PWMHR_CLOCK_DIVIDED_FREQUENCY)
#define PWMHR7_CLOCK_DIVIDED_FREQUENCY (PWMHR_CLOCK_DIVIDED_FREQUENCY)
#define PWM_CH0_PERIPHERAL             SPINDLE_PWM_PERIPHERAL
#define PWM_CH1_PERIPHERAL             CCP4
#define PWM_CH2_PERIPHERAL             CCP5
#define PWM_CH3_PERIPHERAL             CCP6
#define PWM_CH4_PERIPHERAL             CCP7
#define PWM_CH5_PERIPHERAL             CCP8
    
#include <xc.h>
#include <libpic30.h>
#include "../mcc_generated_files/mcc.h"
#include "cpu_map.h"

#define round(d) round_c99(d)
#define sei() __builtin_disi(0)     
#define cli() __builtin_disi(0x3fff)
#define ISR(func)   void func(void)
#define M_PI   3.14159265358979323846264338327950288
#define _delay_ms(msec) __delay_ms(msec)
#define _delay_us(msec) __delay_us(msec)
#define pgm_read_byte_near(x) (*x)
#define PSTR(str) (str)

#define GPIO_setHigh(port, bitmask)               do { _pre(LAT, port)  |=  (bitmask); } while (0)
#define GPIO_setLow(port, bitmask)                do { _pre(LAT, port)  &= ~(bitmask); } while (0)
#define GPIO_setTo(port, value)                   do { _pre(LAT, port)   =  (value)  ; } while (0)
#define GPIO_readStored(port)                     ( _pre(LAT, port) )
#define GPIO_readLive(port)                       ( _pre(PORT, port) )
#define GPIO_confAnalog(port, bitmask)            do { _pre(ANSEL, port) |=  (bitmask); } while (0)
#define GPIO_confDigital(port, bitmask)           do { _pre(ANSEL, port) &=  ~(bitmask); } while (0)
#include "anselhelper.h"
#define GPIO_confInput(port, bitmask)             do { _pre(GPIO_confDigital, port)(bitmask); _pre(TRIS, port) |=  (bitmask); } while (0)
#define GPIO_confOutput(port, bitmask)            do { _pre(GPIO_confDigital, port)(bitmask); _pre(TRIS, port) &= ~(bitmask); } while (0)
#define GPIO_isInput(IODIR_bit_val)               (IODIR_bit_val)
#define GPIO_pullupEnable(port, bitmask)          do { _pre(CNPU, port) |=  (bitmask); } while (0)
#define GPIO_pullupDisable(port, bitmask)         do { _pre(CNPU, port) &= ~(bitmask); } while (0)
#define GPIO_pinchgNotifyEnable(port, bitmask)    do { _pre(CNCON, port) |= _prepost(_CNCON, port, _ON_MASK) | _prepost(_CNCON, port, _CNSTYLE_MASK); _pre(CNEN0, port) |= (bitmask); _pre(CNEN1, port) = _pre(CNEN0, port); } while (0)  //Enable edge change detect
#define GPIO_pinchgNotifyDisable(port, bitmask)   do { _pre(CNEN0, port) |= ~(bitmask); _pre(CNEN1, port) = _pre(CNEN0, port); } while (0)

#define PWM_SPINDLE_halt()                        _prepost(S, SPINDLE_PWM_PERIPHERAL, _COMPARE_Stop)()
#define PWM_SPINDLE_unpause()                     _prepost(S, SPINDLE_PWM_PERIPHERAL, _COMPARE_Start)()
#define PWM_SPINDLE_isEnabled()                   (_post(SPINDLE_PWM_PERIPHERAL,CON1Lbits).CCPON)
#define PWM_SPINDLE_setDutyCycle(dutyCycle)       _prepost(S, SPINDLE_PWM_PERIPHERAL, _COMPARE_SingleCompare16ValueSet)(dutyCycle)
#define TIMER0_initNormalCountingAndOverflowInterrupt() do { TIMER0_loadCount(0); _prepost(S,STEPPERS_STEP_RESET_TIMER, _COMPARE_Start)(); } while(0)
#define TIMER0_stopCounting()                           do { } while(0)   //Done by hardware
#define TIMER0_startDiv8()                              do { } while(0)   //Done by hardware
#define TIMER0_loadCount(val)                           do { _post(STEPPERS_STEP_RESET_TIMER, PRL) = val; } while(0)
#define TIMER0_loadStepPulseDelay(val)                  do { _post(STEPPERS_STEP_RESET_TIMER, RBL) = val; } while(0)
#define TIMER0A_enableCompareMatchInterrupt()           do { } while(0)   //Done by hardware
#define TIMER1_initClearTimerOnCompare()                do { } while(0)   //Done by hardware
#define TIMER1_fullSpeed()                              do { } while(0)
#define TIMER1A_disableOutputCompareInterrupt()         _prepost(S,STEPPERS_STEP_TIMER, _TMR_Stop)()
#define TIMER1A_setCompareMatchValue(val)               _prepost(S,STEPPERS_STEP_TIMER, _TMR_Period32BitSet)(val)
#define TIMER1A_enableOutputCompareInterrupt()          _prepost(S,STEPPERS_STEP_TIMER, _TMR_Start)()   

#ifdef ENABLE_SOFTWARE_DEBOUNCE
    void TIMERWDT_init32ms(void);
    void TIMERWDT_restartAndEnableInterrupt(void);
    void TIMERWDT_stop(void);
#endif
    
    double trunc(double);
    double round_c99(double);
    long lround(double);

#ifdef	__cplusplus
}
#endif

#endif	/* DSPIC_SPECIFIC_H */

