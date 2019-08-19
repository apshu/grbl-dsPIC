#include "grbl.h"


ISR(BLUETOOTH_SERIAL_RX)
{
  uint8_t data = URXREG;
  serial_receive_single_byte(data);
  USART_RX_clear_ISR_flag();
}
