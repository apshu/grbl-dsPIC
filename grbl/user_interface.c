#include "grbl.h"

user_interface_t user_interface;
volatile uint16_t ui_msec_since_last_update;

inline void ui_led_timer(blinky_t *led, uint16_t msec_ellapsed) {
    led->blink_counter += msec_ellapsed;
    if (led->blink_counter >= led->blink_period) {
        led->blink_counter -= led->blink_period;
    }
}

inline bool ui_is_led_on(blinky_t *led) {
    return led->blink_counter < led->blink_off_time;
}

void ui_task(void) {
    uint16_t msec_sinceLastUpdate = ui_msec_since_last_update;
    if (msec_sinceLastUpdate) {
        gpioport_t control_state = system_control_get_state();
        if (control_state & CONTROL_PIN_INDEX_ATX_POWER) {
            // ATX power button is down
            if (!user_interface.ATX_btn_down_msec) {
                // Button pressed just now
                user_interface.is_ATX_btn_intent_off = atx_power_isOn();
                user_interface.LED_ATX.blink_counter = 0;
            } else {
                if (user_interface.is_ATX_btn_intent_off == atx_power_isOn()) {
                    // Intended ATX operation pending
                    if (user_interface.is_ATX_btn_intent_off) {
                        if ((sys.state == STATE_IDLE) || bit_istrue(sys.state, STATE_SLEEP | STATE_SAFETY_DOOR) || (user_interface.ATX_btn_down_msec > 3000)) {
                            gc_execute_line("M81");
                            user_interface.ATX_btn_down_msec = 0;
                        } else {
                            LED_ATX_POWER_BLINK();
                        }
                    } else {
                        //Request to turn on the ATX power supply
                        gc_execute_line("M80");
                    }
                }
            }
            user_interface.ATX_btn_down_msec = min(UINT16_MAX, user_interface.ATX_btn_down_msec + msec_sinceLastUpdate);
        } else {
            user_interface.ATX_btn_down_msec = 0;
            if (atx_power_isOn()) {
                LED_ATX_POWER_ON();
            } else {
                LED_ATX_POWER_OFF();
            }
        }
        ui_msec_since_last_update -= msec_sinceLastUpdate;
        ui_led_timer(&user_interface.LED_ATX, msec_sinceLastUpdate);
        ui_led_timer(&user_interface.LED_manual_pwm, msec_sinceLastUpdate);
        GPIO_setPinTo(LED_ATX_POWER_PORT, LED_ATX_POWER_PIN, ui_is_led_on(&user_interface.LED_ATX));
        GPIO_setPinTo(LED_MANUAL_PWM_PORT, LED_MANUAL_PWM_PIN, ui_is_led_on(&user_interface.LED_manual_pwm));
    }
}

void ui_tick(uint16_t msec) {
    ui_msec_since_last_update = min(UINT16_MAX, ui_msec_since_last_update + msec);
}