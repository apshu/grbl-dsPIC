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
#if NUM_SERVO_CHANNELS > 0
        case 0:
            PG1CONLbits.ON = 1;
            PG1IOCONHbits.PENL = 1;
            break;
#if NUM_SERVO_CHANNELS > 1
        case 1:
            PG1CONLbits.ON = 1;
            PG1IOCONHbits.PENH = 1;
            break;
#if NUM_SERVO_CHANNELS > 2
        case 2:
            PG2CONLbits.ON = 1;
            PG2IOCONHbits.PENL = 1;
            break;
#if NUM_SERVO_CHANNELS > 3
        case 3:
            PG2CONLbits.ON = 1;
            PG2IOCONHbits.PENH = 1;
            break;
#if NUM_SERVO_CHANNELS > 4
        case 4:
            PG3CONLbits.ON = 1;
            PG3IOCONHbits.PENL = 1;
            break;
#if NUM_SERVO_CHANNELS > 5
        case 5:
            PG3CONLbits.ON = 1;
            PG3IOCONHbits.PENH = 1;
            break;
#if NUM_SERVO_CHANNELS > 6
        case 6:
            PG4CONLbits.ON = 1;
            PG4IOCONHbits.PENL = 1;
            break;
#if NUM_SERVO_CHANNELS > 7
        case 7:
            PG4CONLbits.ON = 1;
            PG4IOCONHbits.PENH = 1;
            break;
#endif
#endif
#endif
#endif
#endif
#endif
#endif
#endif
#ifdef PWM_CH1_PERIPHERAL
        case NUM_SERVO_CHANNELS+0:
            _prepost(S, PWM_CH1_PERIPHERAL, _COMPARE_Start)();
            break;
#ifdef PWM_CH2_PERIPHERAL
        case NUM_SERVO_CHANNELS+1:
            _prepost(S, PWM_CH2_PERIPHERAL, _COMPARE_Start)();
            break;
#ifdef PWM_CH3_PERIPHERAL
        case NUM_SERVO_CHANNELS+2:
            _prepost(S, PWM_CH3_PERIPHERAL, _COMPARE_Start)();
            break;
#ifdef PWM_CH4_PERIPHERAL
        case NUM_SERVO_CHANNELS+3:
            _prepost(S, PWM_CH4_PERIPHERAL, _COMPARE_Start)();
            break;
#ifdef PWM_CH5_PERIPHERAL
        case NUM_SERVO_CHANNELS+4:
            _prepost(S, PWM_CH5_PERIPHERAL, _COMPARE_Start)();
            break;
#endif
#endif
#endif
#endif
#endif
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

static uint_fast8_t pwmhw_getPrescalerValue(uint_fast8_t channel) {
    switch (channel) {
#ifdef PWM_CH1_PERIPHERAL
        case NUM_SERVO_CHANNELS+0: return (_post(PWM_CH1_PERIPHERAL, CON1Lbits).TMRPS << 2);
#ifdef PWM_CH2_PERIPHERAL
        case NUM_SERVO_CHANNELS+1: return (_post(PWM_CH2_PERIPHERAL, CON1Lbits).TMRPS << 2);
#ifdef PWM_CH3_PERIPHERAL
        case NUM_SERVO_CHANNELS+2: return (_post(PWM_CH3_PERIPHERAL, CON1Lbits).TMRPS << 2);
#ifdef PWM_CH4_PERIPHERAL
        case NUM_SERVO_CHANNELS+3: return (_post(PWM_CH4_PERIPHERAL, CON1Lbits).TMRPS << 2);
#ifdef PWM_CH5_PERIPHERAL
        case NUM_SERVO_CHANNELS+4: return (_post(PWM_CH5_PERIPHERAL, CON1Lbits).TMRPS << 2);
#endif
#endif
#endif
#endif
#endif
    }
    return 1;
}

uint32_t pwmhw_setFrequency(uint_fast8_t channel, uint32_t frequency) {
    switch (channel) {
#if NUM_SERVO_CHANNELS > 0
        case 0 ... NUM_SERVO_CHANNELS-1:
#endif
            return 50UL;
            break;
#ifdef PWM_CH1_PERIPHERAL
        case NUM_SERVO_CHANNELS+0:
            _post(PWM_CH1_PERIPHERAL, PRL) = PWM_FREQ2SFR(PWM1_CLOCK_DIVIDED_FREQUENCY, frequency);
            return PWM_SFR2FREQ(PWM1_CLOCK_DIVIDED_FREQUENCY/pwmhw_getPrescalerValue(NUM_SERVO_CHANNELS+0), _post(PWM_CH1_PERIPHERAL, PRL));
            break;
#endif
    }
    return 0UL;
}

void pwmhw_setHighPulseLength(uint_fast8_t channel, uint32_t pulseLenNanoSec) {
    switch (channel) {
        case 0:
            PG1DC = PWMHR_PULSE2SFR(PWMHR0_CLOCK_DIVIDED_FREQUENCY, pulseLenNanoSec);
            PG1STATbits.UPDREQ = 1;
            break;
        case 1:
            PG1TRIGB = PWMHR_PULSE2SFR(PWMHR1_CLOCK_DIVIDED_FREQUENCY, pulseLenNanoSec);
            PG1STATbits.UPDREQ = 1;
            break;
        case 2:
            PG2DC = PWMHR_PULSE2SFR(PWMHR2_CLOCK_DIVIDED_FREQUENCY, pulseLenNanoSec);
            PG2STATbits.UPDREQ = 1;
            break;
        case 3:
            PG2TRIGB = PWMHR_PULSE2SFR(PWMHR3_CLOCK_DIVIDED_FREQUENCY, pulseLenNanoSec);
            PG2STATbits.UPDREQ = 1;
            break;
        case 4:
            PG3DC = PWMHR_PULSE2SFR(PWMHR4_CLOCK_DIVIDED_FREQUENCY, pulseLenNanoSec);
            PG3STATbits.UPDREQ = 1;
            break;
        case 5:
            PG3TRIGB = PWMHR_PULSE2SFR(PWMHR5_CLOCK_DIVIDED_FREQUENCY, pulseLenNanoSec);
            PG3STATbits.UPDREQ = 1;
            break;
        case 6:
            PG4DC = PWMHR_PULSE2SFR(PWMHR6_CLOCK_DIVIDED_FREQUENCY, pulseLenNanoSec);
            PG4STATbits.UPDREQ = 1;
            break;
        case 7:
            PG4TRIGB = PWMHR_PULSE2SFR(PWMHR7_CLOCK_DIVIDED_FREQUENCY, pulseLenNanoSec);
            PG4STATbits.UPDREQ = 1;
            break;
        case 8:
            _post(PWM_CH1_PERIPHERAL, RA) = PWM_PULSE2SFR(PWM1_CLOCK_DIVIDED_FREQUENCY, pulseLenNanoSec);
            break;

    }

}


