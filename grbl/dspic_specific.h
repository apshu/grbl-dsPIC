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

#define F_CPU   80000000UL
#define FCY     F_CPU
    
#include <xc.h>
#include <libpic30.h>
#include "../mcc_generated_files/mcc.h"

#define round(d) round_c99(d)
#define sei() Nop()             //TODO:Enable inteerupts
#define cli() Nop()             //TODO:Disable inteerupts
#define ISR(func)   void func(void)
#define M_PI   3.14159265358979323846264338327950288
#define _delay_ms(msec) __delay_ms(msec)
#define _delay_us(msec) __delay_us(msec)
#define pgm_read_byte_near(x) (*x)
#define PSTR(str) (str)
    
    extern int SREG;
    double trunc(double);
    double round_c99(double);
    long lround(double);
    
#ifdef	__cplusplus
}
#endif

#endif	/* DSPIC_SPECIFIC_H */

