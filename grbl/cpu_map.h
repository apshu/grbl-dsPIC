/*
  cpu_map.h - CPU and pin mapping configuration file
  Part of Grbl

  Copyright (c) 2012-2016 Sungeun K. Jeon for Gnea Research LLC

  Grbl is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  Grbl is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with Grbl.  If not, see <http://www.gnu.org/licenses/>.
*/

/* The cpu_map.h files serve as a central pin mapping selection file for different
   processor types or alternative pin layouts. This version of Grbl officially supports
   only the Arduino Mega328p. */


#ifndef cpu_map_h
#define cpu_map_h

#define __prepost(pre, mid, post)                       pre##mid##post
#define _prepost(pre, mid, post)                        __prepost(pre, mid, post)
#define __post(mid, post)                                 mid##post
#define _post(mid, post)                                  __post(mid, post)
#define __pre(pre, mid)                                 pre##mid
#define _pre(pre, mid)                                  __pre(pre, mid)

#define GPIOPORT_NUMBITS    16
    typedef _prepost(uint,GPIOPORT_NUMBITS,_t) gpioport_t; //gpioport_t now defined from GPIOPORT_NUMBITS

  // Define serial port pins and interrupt vectors.
  #define SERIAL_RX                 U1RXInterrupt
  #define SERIAL_UDRE               U1TXInterrupt
  #define URXREG                    U1RXREG
  #define UTXREG                    U1TXREG
  #define UCSR0B                    IEC0
  #define UDRIE0                    _IEC0_U1TXIE_POSITION
  #define USART_RX_clear_ISR_flag() do {IFS0bits.U1RXIF = false;} while(0)
  #define USART_TX_clear_ISR_flag() do {IFS0bits.U1TXIF = false;} while(0)

  // Define step pulse output pins. NOTE: All step bit pins must be on the same port.
  #define STEP_PORT       D
  #define X_STEP_BIT      2  // Uno Digital Pin 2
  #define Y_STEP_BIT      3  // Uno Digital Pin 3
  #define Z_STEP_BIT      4  // Uno Digital Pin 4
  #define STEP_MASK       ((1<<X_STEP_BIT)|(1<<Y_STEP_BIT)|(1<<Z_STEP_BIT)) // All step bits

  // Define step direction output pins. NOTE: All direction pins must be on the same port.
  #define DIRECTION_PORT    D
  #define X_DIRECTION_BIT   5  // Uno Digital Pin 5
  #define Y_DIRECTION_BIT   6  // Uno Digital Pin 6
  #define Z_DIRECTION_BIT   7  // Uno Digital Pin 7
  #define DIRECTION_MASK    ((1<<X_DIRECTION_BIT)|(1<<Y_DIRECTION_BIT)|(1<<Z_DIRECTION_BIT)) // All direction bits

  // Define stepper driver enable/disable output pin.
  #define STEPPERS_DISABLE_PORT         B
  #define STEPPERS_DISABLE_BIT          0  // Uno Digital Pin 8
  #define STEPPERS_DISABLE_MASK         (1<<STEPPERS_DISABLE_BIT)
  #define STEPPERS_STEP_TIMER           CCP2
  #define STEPPERS_STEP_RESET_TIMER     CCP3

  // Define homing/hard limit switch input pins and limit interrupt vectors.
  // NOTE: All limit bit pins must be on the same port, but not on a port with other input pins (CONTROL).
  #define LIMIT_PORT       B
  #define X_LIMIT_BIT      7  // Uno Digital Pin 9
  #define Y_LIMIT_BIT      2  // Uno Digital Pin 10
  #define Z_LIMIT_BIT	   13 // Uno Digital Pin 12
  #define LIMIT_MASK       ((1<<X_LIMIT_BIT)|(1<<Y_LIMIT_BIT)|(1<<Z_LIMIT_BIT)) // All limit bits
  
  // Define spindle enable and spindle direction output pins.
  #define SPINDLE_ENABLE_PORT   B
  // Z Limit pin and spindle PWM/enable pin swapped to access hardware PWM on Pin 11.
  #ifdef VARIABLE_SPINDLE
    #ifdef USE_SPINDLE_DIR_AS_ENABLE_PIN
      // If enabled, spindle direction pin now used as spindle enable, while PWM remains on D11.
      #define SPINDLE_ENABLE_BIT    5  // Uno Digital Pin 13 (NOTE: D13 can't be pulled-high input due to LED.)
    #else
      #define SPINDLE_ENABLE_BIT    3  // Uno Digital Pin 11
    #endif
  #else
    #define SPINDLE_ENABLE_BIT      4  // Uno Digital Pin 12
  #endif
  #ifndef USE_SPINDLE_DIR_AS_ENABLE_PIN
    #define SPINDLE_DIRECTION_PORT  B
    #define SPINDLE_DIRECTION_BIT   5  // Uno Digital Pin 13 (NOTE: D13 can't be pulled-high input due to LED.)
  #endif

  // Define flood and mist coolant enable output pins.
  #define COOLANT_FLOOD_PORT  C
  #define COOLANT_FLOOD_BIT   3  // Uno Analog Pin 3
  #define COOLANT_MIST_PORT   C
  #define COOLANT_MIST_BIT    4  // Uno Analog Pin 4

  // Define user-control controls (cycle start, reset, feed hold) input pins.
  // NOTE: All CONTROLs pins must be on the same port
  #define CONTROL_PORT              E
  #define CONTROL_RESET_BIT         7  // Uno Analog Pin 0
  #define CONTROL_FEED_HOLD_BIT     8  // Uno Analog Pin 1
  #define CONTROL_CYCLE_START_BIT   9  // Uno Analog Pin 2
  #define CONTROL_SAFETY_DOOR_BIT   13  // Uno Analog Pin 1 NOTE: Safety door is shared with feed hold. Enabled by config define.
  #define CONTROL_MASK              ((1<<CONTROL_RESET_BIT)|(1<<CONTROL_FEED_HOLD_BIT)|(1<<CONTROL_CYCLE_START_BIT)|(1<<CONTROL_SAFETY_DOOR_BIT))
  #define CONTROL_INVERT_MASK       CONTROL_MASK // May be re-defined to only invert certain control pins.

  // Define probe switch input pin.
  #define PROBE_PORT      C
  #define PROBE_BIT       5  // Uno Analog Pin 5
  #define PROBE_MASK      (1<<PROBE_BIT)

  // Variable spindle configuration below. Do not change unless you know what you are doing.
  // NOTE: Only used when variable spindle is enabled.
  #define SPINDLE_PWM_MAX_VALUE     22500 // Don't change. 328p fast PWM mode fixes top value as 255.
  #ifndef SPINDLE_PWM_MIN_VALUE
    #define SPINDLE_PWM_MIN_VALUE   1   // Must be greater than zero.
  #endif
  #define SPINDLE_PWM_OFF_VALUE     0
  #define SPINDLE_PWM_RANGE         (SPINDLE_PWM_MAX_VALUE-SPINDLE_PWM_MIN_VALUE)

  // NOTE: On the 328p, these must be the same as the SPINDLE_ENABLE settings.
  #define SPINDLE_PWM_PERIPHERAL     CCP1
/*
#ifdef CPU_MAP_CUSTOM_PROC
  // For a custom pin map or different processor, copy and edit one of the available cpu
  // map files and modify it to your needs. Make sure the defined name is also changed in
  // the config.h file.
#endif
*/

#endif
