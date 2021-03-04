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

#include "config.h"


#define __prepost(pre, mid, post)      pre##mid##post
#define _prepost(pre, mid, post)       __prepost(pre, mid, post)
#define __post(mid, post)                mid##post
#define _post(mid, post)                 __post(mid, post)
#define __pre(pre, mid)                pre##mid
#define _pre(pre, mid)                 __pre(pre, mid)

#define GPIOPORT_NUMBITS    16
    typedef _prepost(uint,GPIOPORT_NUMBITS,_t) gpioport_t; //gpioport_t now defined from GPIOPORT_NUMBITS

  // Define serial port pins and interrupt vectors.
  #define SERIAL_PERIPHERAL                   1
  #define BLUETOOTH_SERIAL_PERIPHERAL         2

  #define SERIAL_RX                    _prepost(U,SERIAL_PERIPHERAL,RXInterrupt)
  #define SERIAL_UDRE                  _prepost(U,SERIAL_PERIPHERAL,TXInterrupt)
  #define URXREG                       _prepost(U,SERIAL_PERIPHERAL,RXREG)
  #define UTXREG                       _prepost(U,SERIAL_PERIPHERAL,TXREG)
  #define SERIAL_ISR_ENABLE            _prepost(_U,SERIAL_PERIPHERAL,TXIE)
  #define USART_RX_clear_ISR_flag()    do {_prepost(_U,SERIAL_PERIPHERAL,RXIF) = false;} while(0)
  #define USART_TX_clear_ISR_flag()    do {_prepost(_U,SERIAL_PERIPHERAL,TXIF) = false;} while(0)
  
  #define BLUETOOTH_SERIAL_RX                 _prepost(U,BLUETOOTH_SERIAL_PERIPHERAL,RXInterrupt)
  #define BLUETOOTH_SERIAL_UDRE               _prepost(U,BLUETOOTH_SERIAL_PERIPHERAL,TXInterrupt)
  #define BLUETOOTH_URXREG                    _prepost(U,BLUETOOTH_SERIAL_PERIPHERAL,RXREG)
  #define BLUETOOTH_UTXREG                    _prepost(U,BLUETOOTH_SERIAL_PERIPHERAL,TXREG)
  #define BLUETOOTH_SERIAL_ISR_ENABLE         _prepost(_U,BLUETOOTH_SERIAL_PERIPHERAL,TXIE)
  #define BLUETOOTH_USART_RX_clear_ISR_flag() do {_prepost(_U,BLUETOOTH_SERIAL_PERIPHERAL,RXIF) = false;} while(0)
  #define BLUETOOTH_USART_TX_clear_ISR_flag() do {_prepost(_U,BLUETOOTH_SERIAL_PERIPHERAL,TXIF) = false;} while(0)
    
  // Define step pulse output pins. NOTE: All step bit pins must be on the same port.
  #define STEP_PORT                    VIRTUAL
  #define X_STEP_BIT                   X_AXIS
  #define Y_STEP_BIT                   Y_AXIS
  #define Z_STEP_BIT                   Z_AXIS
#ifdef ENABLE_DUAL_AXIS
  #define DUAL_STEP_BIT                DUAL_AXIS
  #define STEP_MASK                    ((1<<X_STEP_BIT)|(1<<Y_STEP_BIT)|(1<<Z_STEP_BIT)|(1<<DUAL_STEP_BIT)) // All step bits
#else
  #define STEP_MASK                    ((1<<X_STEP_BIT)|(1<<Y_STEP_BIT)|(1<<Z_STEP_BIT)) // All step bits
#endif

  #define STEP_X_PORT                  B     //Physical MCU port/pin
  #define STEP_X_PIN                   13    //Physical MCU port/pin
  #define STEP_Y_PORT                  C     //Physical MCU port/pin
  #define STEP_Y_PIN                   12    //Physical MCU port/pin
  #define STEP_Z_PORT                  A     //Physical MCU port/pin
  #define STEP_Z_PIN                   1     //Physical MCU port/pin
#ifdef ENABLE_DUAL_AXIS
  #define STEP_DUAL_PORT               D     //Physical MCU port/pin
  #define STEP_DUAL_PIN                13    //Physical MCU port/pin
#endif

    // Define step direction output pins. NOTE: All direction pins must be on the same port.
  #define DIRECTION_PORT               VIRTUAL
  #define X_DIRECTION_BIT              X_AXIS  
  #define Y_DIRECTION_BIT              Y_AXIS  
  #define Z_DIRECTION_BIT              Z_AXIS  
#ifdef ENABLE_DUAL_AXIS
  #define DUAL_DIRECTION_BIT           DUAL_AXIS
  #define DIRECTION_MASK               ((1<<X_DIRECTION_BIT)|(1<<Y_DIRECTION_BIT)|(1<<Z_DIRECTION_BIT)|(1<<DUAL_DIRECTION_BIT)) // All direction bits
#else
  #define DIRECTION_MASK               ((1<<X_DIRECTION_BIT)|(1<<Y_DIRECTION_BIT)|(1<<Z_DIRECTION_BIT)) // All direction bits
#endif

  #define DIRECTION_X_PORT             B   //Physical MCU port/pin    
  #define DIRECTION_X_PIN              12  //Physical MCU port/pin    
  #define DIRECTION_Y_PORT             B   //Physical MCU port/pin    
  #define DIRECTION_Y_PIN              15  //Physical MCU port/pin    
  #define DIRECTION_Z_PORT             A   //Physical MCU port/pin    
  #define DIRECTION_Z_PIN              0   //Physical MCU port/pin    
#ifdef ENABLE_DUAL_AXIS
  #define DIRECTION_DUAL_PORT          D   //Physical MCU port/pin    
  #define DIRECTION_DUAL_PIN           14  //Physical MCU port/pin    
#endif

  // Define stepper driver enable/disable output pin.
  #define STEPPERS_DISABLE_PORT        C   //Physical MCU port/pin
  #define STEPPERS_DISABLE_BIT         14  //Physical MCU port/pin
  #define STEPPERS_DISABLE_MASK        (1<<STEPPERS_DISABLE_BIT)
  #define STEPPERS_STEP_TIMER          CCP2
  #define STEPPERS_STEP_RESET_TIMER    CCP3

  // Define homing/hard limit switch input pins and limit interrupt vectors.
  // NOTE: All limit bit pins must be on the same port, but not on a port with other input pins (CONTROL).
  #define LIMIT_PORT                   VIRTUAL
  #define X_LIMIT_BIT                  X_AXIS
  #define Y_LIMIT_BIT                  Y_AXIS
  #define Z_LIMIT_BIT	               Z_AXIS
#ifdef ENABLE_DUAL_AXIS
  #define DUAL_LIMIT_BIT               DUAL_AXIS
  #define LIMIT_MASK                   ((1<<X_LIMIT_BIT)|(1<<Y_LIMIT_BIT)|(1<<Z_LIMIT_BIT)|(1<<DUAL_LIMIT_BIT)) // All limit bits
#else
  #define LIMIT_MASK                   ((1<<X_LIMIT_BIT)|(1<<Y_LIMIT_BIT)|(1<<Z_LIMIT_BIT)) // All limit bits
#endif
  
  #define LIMIT_X_PORT                 C   //Physical MCU port/pin
  #define LIMIT_X_PIN                  13  //Physical MCU port/pin
  #define LIMIT_Y_PORT                 C   //Physical MCU port/pin
  #define LIMIT_Y_PIN                  15  //Physical MCU port/pin
  #define LIMIT_Z_PORT                 A   //Physical MCU port/pin
  #define LIMIT_Z_PIN                  2   //Physical MCU port/pin
#ifdef ENABLE_DUAL_AXIS
  #define LIMIT_DUAL_PORT              C   //Physical MCU port/pin
  #define LIMIT_DUAL_PIN               0   //Physical MCU port/pin
#endif

  #define TIMER_10ms_TIMER TMR1

  // Define spindle enable and spindle direction output pins.
  #define SPINDLE_ENABLE_PORT          B   //Physical MCU port/pin
  #define SPINDLE_ENABLE_BIT           1   //Physical MCU port/pin
  #define SPINDLE_DIRECTION_PORT       B   //Physical MCU port/pin
  #define SPINDLE_DIRECTION_BIT        0   //Physical MCU port/pin

  // Define flood and mist coolant enable output pins.
  #define COOLANT_FLOOD_PORT           D   //Physical MCU port/pin
  #define COOLANT_FLOOD_BIT            11  //Physical MCU port/pin
  #define COOLANT_MIST_PORT            C   //Physical MCU port/pin
  #define COOLANT_MIST_BIT             7   //Physical MCU port/pin

  // Define user-control controls (cycle start, reset, feed hold) input pins.
  // NOTE: All CONTROLs pins must be on the same port
  #define CONTROL_PORT                 VIRTUAL
  #define CONTROL_RESET_BIT            0
  #define CONTROL_FEED_HOLD_BIT        1
  #define CONTROL_CYCLE_START_BIT      2
#ifdef ENABLE_SPINDLE_MANUAL_OVERRIDE
  #define CONTROL_MANUAL_PWM_BIT       3   
  #define CONTROL_MASK                 ((1<<CONTROL_RESET_BIT)|(1<<CONTROL_FEED_HOLD_BIT)|(1<<CONTROL_CYCLE_START_BIT)|(1<<CONTROL_MANUAL_PWM_BIT))
#else
  #define CONTROL_MASK                 ((1<<CONTROL_RESET_BIT)|(1<<CONTROL_FEED_HOLD_BIT)|(1<<CONTROL_CYCLE_START_BIT))
#endif
  #define INVERT_CONTROL_PIN_MASK      CONTROL_MASK // May be re-defined to only invert certain control pins.

  #define CONTROL_RESET_PORT           B   //Physical MCU port/pin
  #define CONTROL_RESET_PIN            6   //Physical MCU port/pin
  #define CONTROL_FEED_HOLD_PORT       B   //Physical MCU port/pin
  #define CONTROL_FEED_HOLD_PIN        5   //Physical MCU port/pin
  #define CONTROL_CYCLE_START_PORT     D   //Physical MCU port/pin
  #define CONTROL_CYCLE_START_PIN      12  //Physical MCU port/pin

#ifdef ENABLE_SPINDLE_MANUAL_OVERRIDE
  #define SPINDLE_MANUAL_PWM_RATIO     (0.5) // 1.0 = PWM duty cycle = 100%, 0.5 = PWM duty cycle = 50%, 0.0 = PWM duty cycle = 0% 
  #define CONTROL_MANUAL_PWM_PORT      C   //Physical MCU port/pin
  #define CONTROL_MANUAL_PWM_PIN       6   //Physical MCU port/pin
  #define LED_MANUAL_PWM_PORT          C   //Physical MCU port/pin
  #define LED_MANUAL_PWM_PIN           1   //Physical MCU port/pin
  #define LED_MANUAL_PWM_ON()          do { } while(0)
  #define LED_MANUAL_PWM_BLINK()       do { } while(0)
  #define LED_MANUAL_PWM_OFF()         do { } while(0)
#endif

  // Define probe switch input pin.
  #define PROBE_PORT                   B   //Physical MCU port/pin
  #define PROBE_BIT                    2   //Physical MCU port/pin
  #define PROBE_MASK                   (1<<PROBE_BIT)

  // Variable spindle configuration below. Do not change unless you know what you are doing.
  // NOTE: Only used when variable spindle is enabled.
  #define SPINDLE_PWM_MAX_VALUE        22500 // Don't change. 328p fast PWM mode fixes top value as 255.
  #ifndef SPINDLE_PWM_MIN_VALUE   
    #define SPINDLE_PWM_MIN_VALUE      1     // Must be greater than zero.
  #endif   
  #define SPINDLE_PWM_OFF_VALUE        0
  #define SPINDLE_PWM_RANGE            (SPINDLE_PWM_MAX_VALUE-SPINDLE_PWM_MIN_VALUE)

  // NOTE: On the 328p, these must be the same as the SPINDLE_ENABLE settings.
  #define SPINDLE_PWM_PERIPHERAL       CCP1
/*
#ifdef CPU_MAP_CUSTOM_PROC
  // For a custom pin map or different processor, copy and edit one of the available cpu
  // map files and modify it to your needs. Make sure the defined name is also changed in
  // the config.h file.
#endif
*/
#ifdef ENABLE_ATX_POWER
  #define ATX_POWER_ON_PORT            D   //Physical MCU port/pin
  #define ATX_POWER_ON_BIT             15  //Physical MCU port/pin
  #define ATX_POWER_ON_MASK            (1<<ATX_POWER_ON_BIT)
  #define ATX_POWER_BTN_PORT           A   //Physical MCU port/pin
  #define ATX_POWER_BTN_PIN            3   //Physical MCU port/pin
  #define ATX_LED_PORT                 A   //Physical MCU port/pin
  #define ATX_LED_PIN                  4   //Physical MCU port/pin
  //#define ATX_POWER_PGOOD_PORT         D   //Physical MCU port/pin
  //#define ATX_POWER_PGOOD_BIT          2   //Physical MCU port/pin
  //#define ATX_POWER_PGOOD_MASK         (1<<ATX_POWER_PGOOD_BIT)
  
  //#define ATX_POWER_ON()               do { GPIO_setLow(ATX_POWER_ON_PORT, ATX_POWER_ON_MASK); GPIO_confOutput(ATX_POWER_ON_PORT, ATX_POWER_ON_MASK);  GPIO_setLow(ATX_POWER_ON_PORT, ATX_POWER_ON_MASK); } while (0)
  //#define ATX_POWER_OFF()              do { GPIO_confInput(ATX_POWER_ON_PORT, ATX_POWER_ON_MASK);   } while (0)
  //#define ATX_IS_ON()                  (bit_istrue(GPIO_readLive(ATX_POWER_PGOOD_PORT), ATX_POWER_PGOOD_MASK))    
#endif
    
  #define LASER_ENABLE_PORT            D   //Physical MCU port/pin
  #define LASER_ENABLE_PIN             10  //Physical MCU port/pin

#endif //cpu_map_h
