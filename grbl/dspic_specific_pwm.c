#include <xc.h>
#include <math.h>
#include "grbl.h"

#define PWM_FREQ2SFR(clocking, freq) (clocking / freq - 1.0)
#define PWM_PULSE2SFR(clocking, pulsens) (((float)pulsens * clocking ) / 1e9 - 1.0) 
#define PWM_SFR2FREQ(clocking, sfrvalue) (clocking / (sfrvalue+1))

#define PWMHR_FREQ2SFR(clocking, freq) (PWM_FREQ2SFR(clocking, freq))
#define PWMHR_PULSE2SFR(clocking, pulsens) (PWM_PULSE2SFR(clocking, pulsens)) 

bool pwmhw_enableChannel(uint_fast8_t channel) {
    switch (channel) {
        case 0:
            _prepost(S, PWM_CH1_PERIPHERAL, _COMPARE_Start)();
            break;
        default:
            return false;
    }
    return true;
}

void pwmhw_disableChannel(uint_fast8_t channel) {
    pwmhw_setHighPulseLength(channel, 0);
}

void pwmhw_startPWMupdates(void) {

}

void pwmhw_finishPWMupdates(void) {

}

static uint32_t spwmhw_setFrequency(volatile uint16_t *PERIOD_REG, volatile uint16_t *CON_REG, uint32_t frequency) {
    if (frequency) {
        uint32_t divisor = 65534UL * frequency; //Perpare for round-up
        uint16_t prescaler_need = ((PWMS_BASE_FREQUENCY + divisor - 1) / divisor); //Division rounded up
        uint16_t prescaler_reg_val = *CON_REG & ~(_CCP4CON1L_CLKSEL_MASK | _CCP4CON1L_TMRPS_MASK); //Register value
        uint16_t prescaler_val; //Effective prescaler value
        uint16_t period_reg = 0; //Period register value
        if (prescaler_need > 64) {
            // Inf...65 -> 128
            prescaler_val = 128; //Effective prescaler
            prescaler_reg_val |= _CCP4CON1L_TMRPS_MASK; //1:64 prescaler + 1:2
            if (prescaler_need > 128) {
                period_reg = 0xFFFF; // Maximal divider      
            }
        } else {
            if (prescaler_need > 32) {
                // 64...33 -> 64
                prescaler_val = 64; //Effective prescaler
                prescaler_reg_val |= _CCP4CON1L_CLKSEL1_MASK | _CCP4CON1L_TMRPS_MASK; //1:64 prescaler + 1:1
            } else {
                if (prescaler_need > 16) {
                    // 32...17 -> 32
                    prescaler_val = 32; //Effective prescaler
                    prescaler_reg_val |= _CCP4CON1L_TMRPS1_MASK; //1:16 prescaler + 1:2
                } else {
                    if (prescaler_need > 8) {
                        // 16...9 -> 16
                        prescaler_val = 16; //Effective prescaler
                        prescaler_reg_val |= _CCP4CON1L_CLKSEL1_MASK | _CCP4CON1L_TMRPS1_MASK; //1:16 prescaler + 1:1
                    } else {
                        if (prescaler_need > 4) {
                            // 8...5 -> 8
                            prescaler_val = 8; //Effective prescaler
                            prescaler_reg_val |= _CCP4CON1L_TMRPS0_MASK; //1:4 prescaler + 1:2
                        } else {
                            if (prescaler_need > 2) {
                                // 4...3 -> 4
                                prescaler_val = 4; //Effective prescaler
                                prescaler_reg_val |= _CCP4CON1L_CLKSEL1_MASK | _CCP4CON1L_TMRPS0_MASK; //1:4 prescaler + 1:1
                            } else {
                                if (prescaler_need == 2) {
                                    // 2 -> 2
                                    prescaler_val = 2; //Effective prescaler
                                    //prescaler_reg_val |= 0; //1:1 prescaler + 1:2
                                } else {
                                    prescaler_val = 1; //Effective prescaler
                                    prescaler_reg_val |= _CCP4CON1L_CLKSEL1_MASK; //1:1 prescaler + 1:1
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!period_reg) {
            //Period not preset, calculate now
            period_reg = PWMS_BASE_FREQUENCY / ((uint32_t) prescaler_val * frequency);
        }
        *CON_REG = prescaler_reg_val;
        *PERIOD_REG = period_reg - 1;
        return (PWMS_BASE_FREQUENCY / ((uint32_t) prescaler_val * (uint32_t) period_reg));
    }
    return 0UL;
}

static uint_fast8_t pwmhw_getPrescalerValue(uint_fast8_t channel) {
    switch (channel) {
        case 0: return ((_post(PWM_CH1_PERIPHERAL, CON1Lbits).CLKSEL ? 1: 2) << (_post(PWM_CH1_PERIPHERAL, CON1Lbits).TMRPS << 1));
    }
    return 1;
}

uint32_t pwmhw_setFrequency(uint_fast8_t channel, uint32_t frequency) {
    switch (channel) {
        case 0:
            return spwmhw_setFrequency(&_post(PWM_CH1_PERIPHERAL, PRL), &_post(PWM_CH1_PERIPHERAL, CON1L), frequency);
            break;
    }
    return 0UL;
}

void pwmhw_setHighPulseLength(uint_fast8_t channel, uint32_t pulseLenNanoSec) {
    switch (channel) {
        case 0:
            _post(PWM_CH1_PERIPHERAL, RA) = 0;
            _post(PWM_CH1_PERIPHERAL, RB) = PWM_PULSE2SFR(PWMS_BASE_FREQUENCY / pwmhw_getPrescalerValue(NUM_SERVO_CHANNELS + 0), pulseLenNanoSec);
            break;

    }

}


