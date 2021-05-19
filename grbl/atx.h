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

    bool atx_power_init(void);
    bool atx_power_on(void);
    bool atx_auto_on(void);    //Returns True if success. Sets alarms if no success. Sends status messages
    bool atx_power_isOn(void);
    bool atx_power_off(void);
    bool atx_auto_off(void);   //Returns True if success. Sets alarms if no success. Sends status messages
    
#endif
    
#ifdef	__cplusplus
}
#endif

#endif	/* ATX_H */

