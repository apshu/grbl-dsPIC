#include <xc.h>
#include <math.h>
#include "grbl.h"
#include "dspic_specific.h"

#define _ISR_VECTOR_FUNC(func) _##func(void)
#define ISR_VECTOR_FUNC(func) _ISR_VECTOR_FUNC(func)
#define DECLARE_VECTOR(func) ISR(func); __attribute__((interrupt, auto_psv)) void ISR_VECTOR_FUNC(func) { func(); }

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

__attribute__((interrupt, auto_psv)) void ISR_VECTOR_FUNC(LIMIT_INT_vect) {
    if (IFS1bits.CNCIF == 1) {
        // Clear the flag
        IFS1bits.CNCIF = 0;
        LIMIT_INT_vect();
    }
}
DECLARE_VECTOR(CONTROL_INT_vect);

