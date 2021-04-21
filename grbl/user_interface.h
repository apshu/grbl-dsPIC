/* 
 * File:   user_interface.h
 * Author: M91541
 *
 * Created on April 12, 2021, 10:49 AM
 */

#ifndef USER_INTERFACE_H
#define	USER_INTERFACE_H

#ifdef	__cplusplus
extern "C" {
#endif

    typedef struct {
        uint16_t blink_counter; //msec
        uint16_t blink_off_time; //if counter is higher than this number, LED is OFF. ON otherwise
        uint16_t blink_period; //Counter reaching this number or higher, counter reset to 0
    } blinky_t;

    typedef struct {
        bool is_manual_pwm_override_active; // Ture, if PWM shall output manual_pwm_knob_value
        bool is_manual_pwm_override_reqest; // Ture, if PWM shall output manual_pwm_knob_value
        uint16_t manual_pwm_knob_value; // ADC value, read from potentiometer
        uint16_t pwm_automatic_value; // Last spindle PWM request value. (Not including enable/disable state)
        uint16_t manual_pwm_override_value; // PWM value that should be used for PWM
        uint16_t manual_pwm_btn_down_msec; // PWM override button is engaged for this many msec
        blinky_t LED_manual_pwm; // Setting and state for the manual PWM LED
        uint16_t ATX_btn_down_msec; // ATX power button is engaged for this many msec
        bool is_ATX_btn_intent_off; // True if user wants to turn ATX off
        blinky_t LED_ATX; // Setting and state for the ATX LED
    } user_interface_t;
    extern user_interface_t user_interface;

    void ui_task(void);
    void ui_tick(uint16_t msec);
    void ui_disable_pwm_override(void);
    
#ifdef	__cplusplus
}
#endif

#endif	/* USER_INTERFACE_H */

