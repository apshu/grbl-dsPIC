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
#define GPIO_confInput(port, bitmask)             do { _pre(TRIS, port) |=  (bitmask); } while (0)
#define GPIO_confOutput(port, bitmask)            do { _pre(TRIS, port) &= ~(bitmask); } while (0)
#define GPIO_pullupEnable(port, bitmask)          do { _pre(CNPU, port) |=  (bitmask); } while (0)
#define GPIO_pullupDisable(port, bitmask)         do { _pre(CNPU, port) &= ~(bitmask); } while (0)
    
    double trunc(double);
    double round_c99(double);
    long lround(double);
    
#ifdef	__cplusplus
}
#endif

#endif	/* DSPIC_SPECIFIC_H */

