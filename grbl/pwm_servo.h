/* 
 * File:   pwm_servo.h
 * Author: M91541
 *
 * Created on August 27, 2019, 4:31 PM
 */

#ifndef PWM_SERVO_H
#define	PWM_SERVO_H

#ifdef	__cplusplus
extern "C" {
#endif

    typedef enum {
        PWM_SERVO_TYPE_ANALOG, //Servo 50Hz
        PWM_SERVO_TYPE_DIGITAL, //Servo 300Hz
        PWM_SERVO_TYPE_420mA, //Servo 1kHz
        PWM_SERVO_TYPE_010V, //Servo 10kHz
        PWM_OFF, //Channel is off
        PWM_ON, //Channel is on, operating in standard PWM mode
    } pwmMode_t;

    bool pwm_enable(uint_fast8_t channel, uint32_t frequency); //Set channel to PWM mode and enable
    bool pwm_isChannelEnabled(uint_fast8_t channel);
    bool pwm_setDutyCycle(uint_fast8_t channel, float dutyCycle); //Set channel duty cycle
    bool pwm_setPulseLength(uint_fast8_t channel, uint32_t pulseLenMicrosec); //Set high pulse length [microsec]
    void pwm_applyChannel(uint_fast8_t channel); //if channel is invalid, than all channels are updated to the saved values
    bool pwm_disable(uint_fast8_t channel); //Shut off channel, output is 0V

    bool servo_enable(uint_fast8_t channel, pwmMode_t servo_type); //Enable servo in a specified mode. 
    bool servo_setAngle(uint_fast8_t channel, float angle); //Set servo angle 0-200 deg. = 0.5...200ms
#define servo_disable(channel) pwm_disable(channel) //Disable servo is disabling the PWM and setting IO to "0"

#ifdef	__cplusplus
}
#endif

#endif	/* PWM_SERVO_H */

