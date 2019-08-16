/* 
 * File:   atx.h
 * Author: M91541
 *
 * Created on August 16, 2019, 3:44 PM
 */

#ifndef ATX_H
#define	ATX_H

#ifdef	__cplusplus
extern "C" {
#endif

#ifdef ENABLE_ATX_POWER

    bool atx_power_init();
    bool atx_power_on();
    bool atx_power_isOn();
    bool atx_power_off();

#endif
    
#ifdef	__cplusplus
}
#endif

#endif	/* ATX_H */

