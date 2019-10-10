/* 
 * File:   core_specific.h
 * Author: M91541
 *
 * Created on July 30, 2019, 1:14 PM
 */

#ifndef CORE_SPECIFIC_H
#define	CORE_SPECIFIC_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "dspic_specific.h"
    void PWM_SPINDLE_init(void);

    bool pwmhw_enableChannel(uint_fast8_t channel);
    void pwmhw_startPWMupdates(void);
    uint32_t pwmhw_setFrequency(uint_fast8_t channel, uint32_t frequency);
    void pwmhw_setHighPulseLength(uint_fast8_t channel, uint32_t pulseLenNanoSec);
    void pwmhw_finishPWMupdates(void);
    void pwmhw_disableChannel(uint_fast8_t channel);
    
#ifdef	__cplusplus
}
#endif

#endif	/* CORE_SPECIFIC_H */

