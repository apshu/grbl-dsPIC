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
    return led->blink_counter >= led->blink_off_time;
}

void ui_task(void) {
    uint16_t last_update = ui_msec_since_last_update;
    if (last_update) {
        ui_msec_since_last_update -= last_update;
        ui_led_timer(&user_interface.LED_ATX, last_update);
        ui_led_timer(&user_interface.LED_manual_pwm, last_update);
        GPIO_setPinTo(LED_ATX_POWER_PORT, LED_ATX_POWER_PIN, ui_is_led_on(&user_interface.LED_ATX));
        GPIO_setPinTo(LED_MANUAL_PWM_PORT, LED_MANUAL_PWM_PIN, ui_is_led_on(&user_interface.LED_manual_pwm));
    }
}

void ui_tick(uint16_t msec) {
    ui_msec_since_last_update = min(UINT16_MAX, ui_msec_since_last_update + msec);
}