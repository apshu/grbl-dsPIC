#include "grbl.h"

#if !defined(ATX_IS_ON) && !defined(ATX_POWER_PGOOD_PORT) && (defined(ATX_POWER_ON) || defined(ATX_POWER_OFF))
#define ATX_POWER_SW_STATE
#endif

#ifdef ATX_POWER_SW_STATE
bool atx_is_powered_on = false;
#endif

bool atx_power_init(void) {

    _prepost(ODC, ATX_POWER_ON_PORT, bits)._prepost(ODC, ATX_POWER_ON_PORT, ATX_POWER_ON_BIT) = 1; //Enable open-drain pin or the power port

#ifdef ATX_POWER_DEFAULT_ON
    return atx_power_on();
#else
    return atx_power_off();
#endif
}

bool atx_power_on(void) {
#ifdef ATX_POWER_ON
    ATX_POWER_ON();
#else
    GPIO_setLow(ATX_POWER_ON_PORT, ATX_POWER_ON_MASK);
    GPIO_confOutput(ATX_POWER_ON_PORT, ATX_POWER_ON_MASK);
    GPIO_setLow(ATX_POWER_ON_PORT, ATX_POWER_ON_MASK);
#endif
#ifdef ATX_POWER_SW_STATE
    atx_is_powered_on = true;
#endif
#if (ATX_POWER_PGOOD_TIMEOUT > 0)
#ifndef ATX_POWER_PGOOD_DEBOUNCE
#define ATX_POWER_PGOOD_DEBOUNCE 0
#endif
    uint_fast16_t msecctr;
    uint_fast16_t msdebounce = 0;
    for (msecctr = ATX_POWER_PGOOD_TIMEOUT + 1; msecctr;) {
        if (atx_power_isOn()) {
            ++msdebounce;
        } else {
            msdebounce = 0;
        }
        if (msdebounce > ATX_POWER_PGOOD_DEBOUNCE) {
            LED_ATX_POWER_ON();
            return true;
        }
        if (--msecctr) {
            __delay_ms(1);
        }
    }
    return false;
#else
    return atx_power_isOn();
#endif
}

bool atx_power_isOn(void) {
#ifdef ATX_IS_ON
    return ATX_IS_ON();
#else 
#ifdef ATX_POWER_SW_STATE
    return atx_is_powered_on;
#else
#ifdef ATX_POWER_PGOOD_PORT
    return bit_istrue(GPIO_readLive(ATX_POWER_PGOOD_PORT), ATX_POWER_PGOOD_MASK);
#else
    return bit_isfalse(GPIO_readLive(ATX_POWER_ON_PORT), ATX_POWER_ON_MASK);
#endif
#endif
#endif
}

bool atx_power_off(void) {
#ifdef ATX_POWER_OFF
    ATX_POWER_OFF();
#else
    GPIO_confInput(ATX_POWER_ON_PORT, ATX_POWER_ON_MASK);
#endif
#ifdef ATX_POWER_SW_STATE
    atx_is_powered_on = false;
#endif
#if (ATX_POWER_PGOOD_TIMEOUT > 0)
#ifndef ATX_POWER_PGOOD_DEBOUNCE
#define ATX_POWER_PGOOD_DEBOUNCE 0
#endif
    uint_fast16_t msecctr;
    uint_fast16_t msdebounce = 0;
    for (msecctr = ATX_POWER_PGOOD_TIMEOUT + 1; msecctr;) {
        if (atx_power_isOn()) {
            msdebounce = 0;
        } else {
            ++msdebounce;
        }
        if (msdebounce > ATX_POWER_PGOOD_DEBOUNCE) {
            LED_ATX_POWER_OFF();
            return true;
        }
        if (--msecctr) {
            __delay_ms(1);
        }
    }
    return false;
#else
    return !atx_power_isOn();
#endif
}

bool atx_auto_on(void) {
#if defined (ENABLE_ATX_POWER) && defined (ATX_POWER_AUTOMATIC_ON)
    if (bit_istrue(settings.flags, BITFLAG_AUTO_ATX_ENABLE) && !atx_power_isOn()) {
        // If Automatic ATX is enabled, and ATX is off, turn it on.
        if (atx_power_on()) {
            delay_ms(ATX_AUTOMATIC_ON_WAIT); // Wait for ATX settle
            report_feedback_message(MESSAGE_ATX_POWER_ON);
        } else {
            system_set_exec_alarm(EXEC_ALARM_ATX_POWER_FAIL);
            report_feedback_message(MESSAGE_ATX_POWER_OFF);
            report_status_message(STATUS_ATX_POWER_FAIL);
        }
    }
#endif
    return atx_power_isOn();
}
