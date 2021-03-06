#include "grbl.h"

#define BTN_TIMING_MAX          (60000)         // Maximum counting msec for buttons
#define ADC_MAX_VALUE           (4095)          // Absolute maximum value of ADC
#define PWM_MATCH_THRESHOLD     (500)           // Error margin for comparing PWM values

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

void ui_disable_pwm_override(void) {
    user_interface.is_manual_pwm_override_reqest = user_interface.is_manual_pwm_override_active = false; // No PWM override in laser mode
    user_interface.manual_pwm_btn_down_msec = 0; // Reset button press
    spindle_set_speed(user_interface.pwm_automatic_value); // Update PWM to automatic value
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
                if (user_interface.ATX_btn_down_msec > ATX_BTN_FORCE_RESET) {
                    //Holding ATX button very long, causing system shutdown and reset
                    user_interface.is_ATX_btn_intent_off = true; //Pretend button requetsed poweroff
                    gc_execute_line("M81"); //Poweroff ATX
                    mc_reset(); //Reset GRBL
                } else {
                    if (user_interface.is_ATX_btn_intent_off == atx_power_isOn()) {
                        // Intended ATX operation pending
                        if (user_interface.is_ATX_btn_intent_off) {
                            if ((sys.state == STATE_IDLE) || bit_istrue(sys.state, STATE_SLEEP | STATE_SAFETY_DOOR) || (user_interface.ATX_btn_down_msec > ATX_BTN_FORCE_POWERDOWN)) {
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
            }
            user_interface.ATX_btn_down_msec = min(BTN_TIMING_MAX, user_interface.ATX_btn_down_msec + msec_sinceLastUpdate);
        } else {
            user_interface.ATX_btn_down_msec = 0;
            if (atx_power_isOn()) {
                LED_ATX_POWER_ON();
            } else {
                LED_ATX_POWER_OFF();
            }
        }
        user_interface.manual_pwm_knob_value = (user_interface.manual_pwm_knob_value + ADC1_SharedChannelAN14ConversionResultGet()) >> 1;
#ifdef ENABLE_SPINDLE_MANUAL_OVERRIDE
        if (control_state & CONTROL_PIN_INDEX_MANUAL_PWM) {
            //Button down
            if (!user_interface.manual_pwm_btn_down_msec) {
                //Button just pressed
                user_interface.is_manual_pwm_override_reqest = !user_interface.is_manual_pwm_override_active; //Requested state is opposite to current state
                user_interface.LED_manual_pwm.blink_counter = 0; // Reset blinking timer
            }
            if (settings.flags & BITFLAG_LASER_MODE) {
                // Bad operation requested: No override when laser mode active
                ui_disable_pwm_override();
                LED_MANUAL_PWM_BAD_REQEST_BLINK();
            } else {
                // Not laser mode
                user_interface.manual_pwm_override_value = ((uint32_t) user_interface.manual_pwm_knob_value * SPINDLE_PWM_MAX_VALUE / ADC_MAX_VALUE);
                if (user_interface.is_manual_pwm_override_reqest != user_interface.is_manual_pwm_override_active) {
                    // Pending override mode change
                    if (user_interface.manual_pwm_btn_down_msec > MANUAL_PWM_BTN_FORCE_OVERRIDE_MS) {
                        // Very long press overrides safety rules
                        user_interface.is_manual_pwm_override_active = user_interface.is_manual_pwm_override_reqest;
                        if (user_interface.is_manual_pwm_override_active) {
                            LED_MANUAL_PWM_ON();
                            uint16_t saved_pwm_value = user_interface.pwm_automatic_value; //Set state will override automatic value
                            atx_auto_on();
                            spindle_set_state((gc_state.modal.spindle == SPINDLE_ENABLE_CCW) ? SPINDLE_ENABLE_CCW : SPINDLE_ENABLE_CW, 0.0); // Run PWM update cycle. Routine takes care on automatic/manual setting
                            user_interface.pwm_automatic_value = saved_pwm_value; // Restore overridden PWM value
                        } else {
                            ui_disable_pwm_override();
                            LED_MANUAL_PWM_OFF();
                        }
                    } else {
                        //Did not lock on speed
                        if (spindle_get_state() == SPINDLE_STATE_DISABLE) {
                            //Bad operation: spindle disabled
                            LED_MANUAL_PWM_BAD_REQEST_BLINK();
                        } else {
                            LED_MANUAL_PWM_BLINK(); // Indicate no lock
                        }
                        if (user_interface.is_manual_pwm_override_reqest) {
                            // Requested manual override, not yet locked
                            user_interface.is_manual_pwm_override_active = (user_interface.pwm_automatic_value + PWM_MATCH_THRESHOLD >= user_interface.manual_pwm_override_value); // Engage manual mode if spindle slow down or keep speed requested
                        } else {
                            // Requested manual override disengage, not yet unlocked
                            user_interface.is_manual_pwm_override_active = (user_interface.pwm_automatic_value >= user_interface.manual_pwm_override_value + PWM_MATCH_THRESHOLD); // Disengage manual mode if spindle slow down or keep speed requested
                            if (!user_interface.is_manual_pwm_override_active) {
                                // Successfully disengaged manual mode 
                                ui_disable_pwm_override(); // apply the automatic speed setting for PWM
                            }
                        }
                    }
                } else {
                    // No pending override change, PWM button down
                    if (user_interface.is_manual_pwm_override_active) {
                        spindle_set_speed(user_interface.pwm_automatic_value); // Run PWM update cycle. Routine takes care on automatic/manual setting
                        LED_MANUAL_PWM_ON();
                    } else {
                        ui_disable_pwm_override();
                        LED_MANUAL_PWM_OFF();
                    }
                }
            }
            user_interface.manual_pwm_btn_down_msec = min(BTN_TIMING_MAX, user_interface.manual_pwm_btn_down_msec + msec_sinceLastUpdate);
        } else {
            //PWM override button idle
            user_interface.manual_pwm_btn_down_msec = 0;
            if (user_interface.is_manual_pwm_override_active) {
                user_interface.manual_pwm_override_value = ((uint32_t) user_interface.manual_pwm_knob_value * SPINDLE_PWM_MAX_VALUE / ADC_MAX_VALUE);
                spindle_set_speed(user_interface.pwm_automatic_value); // Run PWM update cycle. Routine takes care on automatic/manual setting
                LED_MANUAL_PWM_ON();
            } else {
                LED_MANUAL_PWM_OFF();
            }
        }
#else
        LED_MANUAL_PWM_OFF();
        user_interface.is_manual_pwm_override_active = false;
#endif
        if (bit_istrue(control_state, CONTROL_PIN_INDEX_RESET)) {
            //Button down
            if (user_interface.reset_btn_down_msec > RESET_BTN_FORCE_UNLOCK_MS) {
                //Long press on RESET button unlocks machine
                system_execute_line("$X");
                user_interface.reset_btn_down_msec = 0;
            }
            user_interface.reset_btn_down_msec = min(BTN_TIMING_MAX, user_interface.reset_btn_down_msec + msec_sinceLastUpdate);
        } else {
            //Reset button idle
            user_interface.reset_btn_down_msec = 0;
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