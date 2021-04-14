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
#define AXIS_COMMANDS(axis_name) if (_prepost(CNF, _prepost(LIMIT_,axis_name,_PORT) ,bits)._prepost(CNF, _prepost(LIMIT_,axis_name,_PORT), _prepost(LIMIT_,axis_name,_PIN))) { _prepost(CNF, _prepost(LIMIT_,axis_name,_PORT) ,bits)._prepost(CNF, _prepost(LIMIT_,axis_name,_PORT), _prepost(LIMIT_,axis_name,_PIN)) = 0; LIMIT_INT_vect(); }
//<editor-fold defaultstate="collapsed" desc="    AXIS_COMMANDS(<X,Y,Z,A,B,C,DUAL>)">
#ifdef LIMIT_X_PORT
    AXIS_COMMANDS(X)
#endif
#ifdef LIMIT_Y_PORT
    AXIS_COMMANDS(Y)
#endif
#ifdef LIMIT_Z_PORT
    AXIS_COMMANDS(Z)
#endif
#ifdef LIMIT_A_PORT
    AXIS_COMMANDS(A)
#endif
#ifdef LIMIT_B_PORT
    AXIS_COMMANDS(B)
#endif
#ifdef LIMIT_C_PORT
    AXIS_COMMANDS(C)
#endif
#if defined( LIMIT_DUAL_PORT ) && defined( ENABLE_DUAL_AXIS )
    AXIS_COMMANDS(DUAL)
#endif
  //</editor-fold>
#undef AXIS_COMMANDS
#define CONTROL_PIN_COMMANDS(axis_name) if (_prepost(CNF, _prepost(CONTROL_,axis_name,_PORT) ,bits)._prepost(CNF, _prepost(CONTROL_,axis_name,_PORT), _prepost(CONTROL_,axis_name,_PIN))) { _prepost(CNF, _prepost(CONTROL_,axis_name,_PORT) ,bits)._prepost(CNF, _prepost(CONTROL_,axis_name,_PORT), _prepost(CONTROL_,axis_name,_PIN)) = 0; CONTROL_INT_vect(); }
//<editor-fold defaultstate="collapsed" desc="    CONTROL_PIN_COMMANDS(<SAFETY_DOOR,RESET,FEED_HOLD,CYCLE_START,MANUAL_PWM,ATX_POWER>)">
#if defined( ENABLE_SAFETY_DOOR_INPUT_PIN ) && defined( CONTROL_SAFETY_DOOR_BIT )
    CONTROL_PIN_COMMANDS(SAFETY_DOOR)
#endif
#ifdef CONTROL_RESET_BIT
    CONTROL_PIN_COMMANDS(RESET)
#endif
#ifdef CONTROL_FEED_HOLD_BIT
    CONTROL_PIN_COMMANDS(FEED_HOLD)
#endif
#ifdef CONTROL_CYCLE_START_BIT
    CONTROL_PIN_COMMANDS(CYCLE_START)
#endif
#if defined( ENABLE_SPINDLE_MANUAL_OVERRIDE ) && defined( CONTROL_MANUAL_PWM_BIT )
    CONTROL_PIN_COMMANDS(MANUAL_PWM)
#endif
#ifdef CONTROL_ATX_POWER_BIT
    CONTROL_PIN_COMMANDS(ATX_POWER)
#endif
  //</editor-fold>
#undef CONTROL_PIN_COMMANDS
}

#define GPIO_MAKE_ISR(gpio_port) __attribute__((interrupt, auto_psv)) void _prepost(_CN, gpio_port, Interrupt)(void) { _prepost(_CN, gpio_port, IF) = 0; ISR_handle_pinChange(); }
//<editor-fold defaultstate="collapsed" desc="   GPIO_MAKE_ISR(<A-K>)">
#ifdef CNCONA
  GPIO_MAKE_ISR(A)
#endif
#ifdef CNCONB
  GPIO_MAKE_ISR(B)
#endif
#ifdef CNCONC
  GPIO_MAKE_ISR(C)
#endif
#ifdef CNCOND
  GPIO_MAKE_ISR(D)
#endif
#ifdef CNCONE
  GPIO_MAKE_ISR(E)
#endif
#ifdef CNCONF
  GPIO_MAKE_ISR(F)
#endif
#ifdef CNCONG
  GPIO_MAKE_ISR(G)
#endif
#ifdef CNCONH
  GPIO_MAKE_ISR(H)
#endif
#ifdef CNCONI
  GPIO_MAKE_ISR(I)
#endif
#ifdef CNCONJ
  GPIO_MAKE_ISR(J)
#endif
#ifdef CNCONK
  GPIO_MAKE_ISR(K)
#endif
//</editor-fold>
          
ISR(TIMER1_COMPA_vect);

void _prepost(S, STEPPERS_STEP_TIMER, _TMR_Timer32CallBack)(void) {
    TIMER1_COMPA_vect();
}

void _prepost(S, TIMER_UI_TIMER, _TMR_Timer32CallBack)(void) {
    ui_tick(TIMER_UI_TIMER_TICK_MS);
    delay_tick(TIMER_UI_TIMER_TICK_MS);
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
    // <editor-fold defaultstate="collapsed" desc="Outputting '10HLa' status to each available port Out:1 or 0 In:H or L Analog:a">
#ifdef PORTA
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('A');
    serial_write('=');
    report_gpio_to_string(TRISA, PORTA, LATA, ANSELA);
#endif
#ifdef PORTB
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('B');
    serial_write('=');
    report_gpio_to_string(TRISB, PORTB, LATB, ANSELB);
#endif
#ifdef PORTC
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('C');
    serial_write('=');
    report_gpio_to_string(TRISC, PORTC, LATC, ANSELC);
#endif
#ifdef PORTD
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('D');
    serial_write('=');
    report_gpio_to_string(TRISD, PORTD, LATD, ANSELD);
#endif
#ifdef PORTE
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('E');
    serial_write('=');
    report_gpio_to_string(TRISE, PORTE, LATE, ANSELE);
#endif
#ifdef PORTF
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('F');
    serial_write('=');
    report_gpio_to_string(TRISF, PORTF, LATF, ANSELF);
#endif
#ifdef PORTG
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('G');
    serial_write('=');
    report_gpio_to_string(TRISG, PORTG, LATG, ANSELG);
#endif
#ifdef PORTH
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('H');
    serial_write('=');
    report_gpio_to_string(TRISH, PORTH, LATH, ANSELH);
#endif
#ifdef PORTI
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('I');
    serial_write('=');
    report_gpio_to_string(TRISI, PORTI, LATI, ANSELI);
#endif
#ifdef PORTJ
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('J');
    serial_write('=');
    report_gpio_to_string(TRISJ, PORTJ, LATJ, ANSELJ);
#endif
#ifdef PORTK
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('K');
    serial_write('=');
    report_gpio_to_string(TRISK, PORTK, LATK, ANSELK);
#endif
#ifdef PORTL
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('L');
    serial_write('=');
    report_gpio_to_string(TRISL, PORTL, LATL, ANSELL);
#endif
#ifdef PORTM
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('M');
    serial_write('=');
    report_gpio_to_string(TRISM, PORTM, LATM, ANSELM);
#endif
#ifdef PORTN
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('N');
    serial_write('=');
    report_gpio_to_string(TRISN, PORTN, LATN, ANSELN);
#endif
#ifdef PORTO
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('O');
    serial_write('=');
    report_gpio_to_string(TRISO, PORTO, LATO, ANSELO);
#endif
#ifdef PORTP
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('P');
    serial_write('=');
    report_gpio_to_string(TRISP, PORTP, LATP, ANSELP);
#endif
#ifdef PORTQ
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('Q');
    serial_write('=');
    report_gpio_to_string(TRISQ, PORTQ, LATQ, ANSELQ);
#endif
#ifdef PORTR
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('R');
    serial_write('=');
    report_gpio_to_string(TRISR, PORTR, LATR, ANSELR);
#endif
#ifdef PORTS
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('S');
    serial_write('=');
    report_gpio_to_string(TRISS, PORTS, LATS, ANSELS);
#endif
#ifdef PORTT
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('T');
    serial_write('=');
    report_gpio_to_string(TRIST, PORTT, LATT, ANSELT);
#endif
#ifdef PORTU
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('U');
    serial_write('=');
    report_gpio_to_string(TRISU, PORTU, LATU, ANSELU);
#endif
#ifdef PORTV
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('V');
    serial_write('=');
    report_gpio_to_string(TRISV, PORTV, LATV, ANSELV);
#endif
#ifdef PORTW
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('W');
    serial_write('=');
    report_gpio_to_string(TRISW, PORTW, LATW, ANSELW);
#endif
#ifdef PORTX
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('X');
    serial_write('=');
    report_gpio_to_string(TRISX, PORTX, LATX, ANSELX);
#endif
#ifdef PORTY
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('Y');
    serial_write('=');
    report_gpio_to_string(TRISY, PORTY, LATY, ANSELY);
#endif
#ifdef PORTZ
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('Z');
    serial_write('=');
    report_gpio_to_string(TRISZ, PORTZ, LATZ, ANSELZ);
#endif
#undef _I_AM_FIRST_PORTDEF_
    // </editor-fold>
    report_field_pin_state();
    serial_write('>');
    report_util_line_feed();
}
#endif

