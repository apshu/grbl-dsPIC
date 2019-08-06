#include <xc.h>
#include <math.h>
#include "grbl.h"
#include "dspic_specific.h"

#define _ISR_VECTOR_FUNC(func) _##func(void)
#define ISR_VECTOR_FUNC(func) _ISR_VECTOR_FUNC(func)
#define DECLARE_VECTOR(func) ISR(func); __attribute__((interrupt, auto_psv)) void ISR_VECTOR_FUNC(func) { func(); }

#define	THE_PORT_A	-26
#define	THE_PORT_B	-25
#define	THE_PORT_C	-24
#define	THE_PORT_D	-23
#define	THE_PORT_E	-22
#define	THE_PORT_F	-21
#define	THE_PORT_G	-20
#define	THE_PORT_H	-19
#define	THE_PORT_I	-18
#define	THE_PORT_J	-17
#define	THE_PORT_K	-16
#define	THE_PORT_L	-15
#define	THE_PORT_M	-14
#define	THE_PORT_N	-13
#define	THE_PORT_O	-12
#define	THE_PORT_P	-11
#define	THE_PORT_Q	-10
#define	THE_PORT_R	-9
#define	THE_PORT_S	-8
#define	THE_PORT_T	-7
#define	THE_PORT_U	-6
#define	THE_PORT_V	-5
#define	THE_PORT_W	-4
#define	THE_PORT_X	-3
#define	THE_PORT_Y	-2
#define	THE_PORT_Z	-1

void PWM_SPINDLE_init(void) {
    _prepost(S, SPINDLE_PWM_PERIPHERAL, _COMPARE_Initialize)();
    _post(SPINDLE_PWM_PERIPHERAL, PRL) = SPINDLE_PWM_MAX_VALUE;
    _post(SPINDLE_PWM_PERIPHERAL, PRL) = 0;
    PWM_SPINDLE_halt();
}

double trunc(double number) {
    double intval_as_double;
    modf(number, &intval_as_double);
    return intval_as_double;
}

long lround(double number) {
    return (long) round(number);
}

double round_c99(double d) {
    double int_part, frac_part;
    frac_part = modf(d, &int_part);
    if (fabs(frac_part) < 0.5)
        return int_part;
    return int_part > 0.0 ? int_part + 1.0 : int_part - 1.0;
}

ISR(LIMIT_INT_vect);
ISR(CONTROL_INT_vect);

static void ISR_handle_pinChange(void) {
    if (_pre(CNF, LIMIT_PORT) & LIMIT_MASK) {
        _pre(CNF, LIMIT_PORT) &= ~(LIMIT_MASK);
        LIMIT_INT_vect();
    }
    if (_pre(CNF, CONTROL_PORT) & CONTROL_MASK) {
        _pre(CNF, CONTROL_PORT) &= ~(CONTROL_MASK);
        CONTROL_INT_vect();
    }
}

__attribute__((interrupt, auto_psv)) void _prepost(_CN, LIMIT_PORT, Interrupt)(void) {
    if (_prepost(_CN, LIMIT_PORT, IF) == 1) {
        // Clear the flag
        _prepost(_CN, LIMIT_PORT, IF) = 0;
        ISR_handle_pinChange();
    }
}

#if _pre(THE_PORT_, LIMIT_PORT) != _pre(THE_PORT_, CONTROL_PORT)

__attribute__((interrupt, auto_psv)) void _prepost(_CN, CONTROL_PORT, Interrupt)(void) {
    if (_prepost(_CN, CONTROL_PORT, IF) == 1) {
        // Clear the flag
        _prepost(_CN, CONTROL_PORT, IF) = 0;
        ISR_handle_pinChange();
    }
}
#endif

