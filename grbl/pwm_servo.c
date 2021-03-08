#include <stdint.h>

#include "grbl.h"

typedef struct {
    uint32_t frequencyHz;
    uint32_t highPulseNanosec;
    pwmMode_t mode;
} pwmSetting_t;

pwmSetting_t pwmSettings[NUM_PWM_CHANNELS] = {
    {.mode = PWM_OFF,},
};

bool pwm_isChannelEnabled(uint_fast8_t channel) {
    if (channel < NUM_PWM_CHANNELS) {
        return pwmSettings[channel].mode != PWM_OFF;
    }
    return false;
}

void pwm_applyChannel(uint_fast8_t channel) {
    pwmSetting_t *curCh;
    uint_fast8_t lastChannel = channel;
    if (lastChannel >= NUM_PWM_CHANNELS) {
        lastChannel = NUM_PWM_CHANNELS - 1;
        channel = 0;
    }
    pwmhw_startPWMupdates();
    for (curCh = pwmSettings + channel; channel <= lastChannel; ++channel, ++curCh) {
        if (curCh->mode == PWM_OFF) {
            pwmhw_disableChannel(channel);
            pwmhw_setHighPulseLength(channel, 0);
            pwmhw_setFrequency(channel, 0);
        } else {
            curCh->frequencyHz = pwmhw_setFrequency(channel, curCh->frequencyHz);
            pwmhw_setHighPulseLength(channel, curCh->highPulseNanosec);
            if (!pwmhw_enableChannel(channel)) {
                pwmhw_disableChannel(channel);
                pwm_disable(channel);
            }
        }
    }
    pwmhw_finishPWMupdates();
}

bool pwm_enable(uint_fast8_t channel, uint32_t frequency) {
    if ((channel < NUM_SERVO_CHANNELS) && (frequency != 50UL)) {
        //Servos channels operate only at 50Hz
        return false;
    }
    if ((channel < NUM_PWM_CHANNELS) && (frequency)) {
        pwmSettings[channel].frequencyHz = frequency;
        pwmSettings[channel].highPulseNanosec = 0;
        pwmSettings[channel].mode = PWM_ON;
        return true;
    }
    return false;
}

bool pwm_setDutyCycle(uint_fast8_t channel, float dutyCycle) {
    if (channel < NUM_PWM_CHANNELS) {
        if (pwmSettings[channel].frequencyHz) {
            if (dutyCycle <= 0.0) {
                pwmSettings[channel].highPulseNanosec = 0;
            } else {
                if (dutyCycle >= 100.0) {
                    pwmSettings[channel].highPulseNanosec = -1UL;
                } else {
                    pwmSettings[channel].highPulseNanosec = (1e7 * dutyCycle) / pwmSettings[channel].frequencyHz; //Duty cycle in %
                }
            }
            return true;
        }
    }
    return false;
}

bool pwm_setPulseLength(uint_fast8_t channel, uint32_t pulseLenMicrosec) {
    if (channel < NUM_PWM_CHANNELS) {
        if (pwmSettings[channel].frequencyHz) {
            if (1e6 / pwmSettings[channel].frequencyHz > pulseLenMicrosec) {
                pwmSettings[channel].highPulseNanosec = 1000.0 * pulseLenMicrosec;
                return true;
            }
        }
    }
    return false;
}

bool pwm_disable(uint_fast8_t channel) {
    if (channel < NUM_PWM_CHANNELS) {
        pwmSettings[channel].mode = PWM_OFF;
        return true;
    }
    return false;
}

bool servo_enable(uint_fast8_t channel, pwmMode_t servo_type) {
    if ((channel < NUM_SERVO_CHANNELS) && (servo_type != PWM_SERVO_TYPE_ANALOG)) {
        return false;
    }
    if (channel < NUM_PWM_CHANNELS) {
        switch (servo_type) {
            case PWM_SERVO_TYPE_ANALOG:
                pwmSettings[channel].frequencyHz = 50;
                break;
            case PWM_SERVO_TYPE_DIGITAL:
                pwmSettings[channel].frequencyHz = 300;
                break;
            case PWM_SERVO_TYPE_420mA:
                pwmSettings[channel].frequencyHz = 1000;
                break;
            case PWM_SERVO_TYPE_010V:
                pwmSettings[channel].frequencyHz = 10000;
                break;
            default:
                servo_disable(channel); //Unknown servo mode requested
                return false;
        }
        pwmSettings[channel].mode = servo_type;
        if (1e9 / pwmSettings[channel].frequencyHz >= pwmSettings[channel].highPulseNanosec) {
            pwmSettings[channel].highPulseNanosec = 0;
        }
        return true;
    }
    return false;
}

bool servo_setAngle(uint_fast8_t channel, float angle) {
    if (channel < NUM_PWM_CHANNELS) {
        uint32_t pulseLenMicrosec = 0;
        switch (pwmSettings[channel].mode) {
            case PWM_SERVO_TYPE_ANALOG:
            case PWM_SERVO_TYPE_DIGITAL:
                if (angle < 360.0) {
                    pulseLenMicrosec = 500.0 + ((angle * 2000.0) / 200.0);
                } else {
                    return false;
                }
                return pwm_setPulseLength(channel, pulseLenMicrosec);
                break;
            case PWM_SERVO_TYPE_420mA:
            case PWM_SERVO_TYPE_010V:
                return pwm_setDutyCycle(channel, angle / 2.0); //Duty Cycle in %
                break;
            default:
                break;
        }
    }
    return false;
}
