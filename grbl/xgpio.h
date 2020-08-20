/* 
 * File:   xgpio.h
 * Author: M91541
 *
 * Created on January 28, 2020, 10:43 AM
 */

#ifndef XGPIO_H
#define	XGPIO_H

#ifdef	__cplusplus
extern "C" {
#endif

    bool xpio_detect(uint_fast8_t address);
    bool xgpio_setDirection(uint_fast8_t address, uint_fast8_t direction);
    bool xgpio_setPullups(uint_fast8_t address, uint_fast8_t pinPulledUp);
    bool xgpio_setPins(uint_fast8_t address, uint_fast8_t pinsState);
    bool xgpio_getPins(uint_fast8_t address, uint_fast8_t *pinsState);


#ifdef	__cplusplus
}
#endif

#endif	/* XGPIO_H */

