#include <xc.h>
#include <stdbool.h>
#include "xgpio.h"

bool xpio_detect(uint_fast8_t address) {
    return false;
}

bool xgpio_setDirection(uint_fast8_t address, uint_fast8_t direction) {
    return false;
}

bool xgpio_setPullups(uint_fast8_t address, uint_fast8_t pinPulledUp) {
    return false;
}

bool xgpio_setPins(uint_fast8_t address, uint_fast8_t pinsState) {
    return false;
}

bool xgpio_getPins(uint_fast8_t address, uint_fast8_t *pinsState) {
    return false;
}
