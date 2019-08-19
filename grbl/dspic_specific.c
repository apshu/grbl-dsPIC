#include <xc.h>
#include <math.h>
#include "grbl.h"

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
    _post(SPINDLE_PWM_PERIPHERAL, PRH) = 0;
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

ISR(TIMER1_COMPA_vect);

void _prepost(S, STEPPERS_STEP_TIMER, _TMR_Timer32CallBack)(void) {
    TIMER1_COMPA_vect();
}

ISR(TIMER0_OVF_vect);

void _prepost(S, STEPPERS_STEP_RESET_TIMER, _COMPARE_TimerCallBack)(void) {
    TIMER0_OVF_vect();
}

#ifdef ENABLE_SOFTWARE_DEBOUNCE
ISR(WDT_vect);
volatile uint_fast8_t TIMER_WDT_count = 0;
volatile bool TIMER_WDT_enabled = false;

void TIMERWDT_init32ms(void) {
    TIMERWDT_stop();
    TIMER_WDT_count = 0;
}

void TIMERWDT_restartAndEnableInterrupt(void) {
    TIMER_WDT_count = 0;
    TIMER_WDT_enabled = true;
}

void TIMERWDT_stop(void) {
    cli();
    TIMER_WDT_enabled = false;
    sei();
}
#endif

void _post(TIMER_10ms_TIMER, _TimerCallBack)(void) {
#ifdef ENABLE_SOFTWARE_DEBOUNCE
    if (TIMER_WDT_enabled) {
        if (++TIMER_WDT_count > 3) {
            TIMER_WDT_count = 0;
            WDT_vect();
        }
    }
#endif
}

#ifdef STEP_PULSE_DELAY
ISR(TIMER0_COMPA_vect);

void _prepost(S, STEPPERS_STEP_RESET_TIMER, _COMPARE_CallBack)(void) {
    TIMER0_COMPA_vect();
}
#endif

#ifdef ENABLE_M119

void report_gpio_status(void) {
    printPgmString(PSTR("<GPIO:"));
    // <editor-fold defaultstate="collapsed" desc="Outputting '10HL' status to each available port Out:1 or 0 In:H or L">
#ifdef PORTA
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('A');
    serial_write('=');
    report_gpio_to_string(TRISA, PORTA, LATA);
#endif
#ifdef PORTB
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('B');
    serial_write('=');
    report_gpio_to_string(TRISB, PORTB, LATB);
#endif
#ifdef PORTC
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('C');
    serial_write('=');
    report_gpio_to_string(TRISC, PORTC, LATC);
#endif
#ifdef PORTD
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('D');
    serial_write('=');
    report_gpio_to_string(TRISD, PORTD, LATD);
#endif
#ifdef PORTE
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('E');
    serial_write('=');
    report_gpio_to_string(TRISE, PORTE, LATE);
#endif
#ifdef PORTF
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('F');
    serial_write('=');
    report_gpio_to_string(TRISF, PORTF, LATF);
#endif
#ifdef PORTG
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('G');
    serial_write('=');
    report_gpio_to_string(TRISG, PORTG, LATG);
#endif
#ifdef PORTH
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('H');
    serial_write('=');
    report_gpio_to_string(TRISH, PORTH, LATH);
#endif
#ifdef PORTI
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('I');
    serial_write('=');
    report_gpio_to_string(TRISI, PORTI, LATI);
#endif
#ifdef PORTJ
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('J');
    serial_write('=');
    report_gpio_to_string(TRISJ, PORTJ, LATJ);
#endif
#ifdef PORTK
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('K');
    serial_write('=');
    report_gpio_to_string(TRISK, PORTK, LATK);
#endif
#ifdef PORTL
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('L');
    serial_write('=');
    report_gpio_to_string(TRISL, PORTL, LATL);
#endif
#ifdef PORTM
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('M');
    serial_write('=');
    report_gpio_to_string(TRISM, PORTM, LATM);
#endif
#ifdef PORTN
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('N');
    serial_write('=');
    report_gpio_to_string(TRISN, PORTN, LATN);
#endif
#ifdef PORTO
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('O');
    serial_write('=');
    report_gpio_to_string(TRISO, PORTO, LATO);
#endif
#ifdef PORTP
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('P');
    serial_write('=');
    report_gpio_to_string(TRISP, PORTP, LATP);
#endif
#ifdef PORTQ
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('Q');
    serial_write('=');
    report_gpio_to_string(TRISQ, PORTQ, LATQ);
#endif
#ifdef PORTR
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('R');
    serial_write('=');
    report_gpio_to_string(TRISR, PORTR, LATR);
#endif
#ifdef PORTS
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('S');
    serial_write('=');
    report_gpio_to_string(TRISS, PORTS, LATS);
#endif
#ifdef PORTT
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('T');
    serial_write('=');
    report_gpio_to_string(TRIST, PORTT, LATT);
#endif
#ifdef PORTU
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('U');
    serial_write('=');
    report_gpio_to_string(TRISU, PORTU, LATU);
#endif
#ifdef PORTV
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('V');
    serial_write('=');
    report_gpio_to_string(TRISV, PORTV, LATV);
#endif
#ifdef PORTW
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('W');
    serial_write('=');
    report_gpio_to_string(TRISW, PORTW, LATW);
#endif
#ifdef PORTX
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('X');
    serial_write('=');
    report_gpio_to_string(TRISX, PORTX, LATX);
#endif
#ifdef PORTY
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('Y');
    serial_write('=');
    report_gpio_to_string(TRISY, PORTY, LATY);
#endif
#ifdef PORTZ
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('Z');
    serial_write('=');
    report_gpio_to_string(TRISZ, PORTZ, LATZ);
#endif
#undef _I_AM_FIRST_PORTDEF_
    // </editor-fold>
    report_field_pin_state();
    serial_write('>');
    report_util_line_feed();
}
#endif

