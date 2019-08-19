#include "grbl.h"

#ifndef BLUETOOTH_SERIAL_SHARE_TX
#define TX_RING_BUFFER (TX_BUFFER_SIZE+1)

uint8_t bluetooth_serial_tx_buffer[TX_RING_BUFFER];
uint8_t bluetooth_serial_tx_buffer_head = 0;
volatile uint8_t bluetooth_serial_tx_buffer_tail = 0;

ISR(BLUETOOTH_SERIAL_UDRE) {
    uint8_t tail = bluetooth_serial_tx_buffer_tail; // Temporary serial_tx_buffer_tail (to optimize for volatile)

    // Send a byte from the buffer
    BLUETOOTH_USART_TX_clear_ISR_flag();
    BLUETOOTH_UTXREG = bluetooth_serial_tx_buffer[tail];

    // Update tail position
    tail++;
    if (tail == TX_RING_BUFFER) {
        tail = 0;
    }

    bluetooth_serial_tx_buffer_tail = tail;

    // Turn off Data Register Empty Interrupt to stop tx-streaming if this concludes the transfer
    if (tail == bluetooth_serial_tx_buffer_head) {
        BLUETOOTH_SERIAL_ISR_ENABLE = false;
    }
}

// Writes one byte to the TX serial buffer. Called by main program.

void bluetooth_serial_write(uint8_t data) {
    // Calculate next head
    uint8_t next_head = bluetooth_serial_tx_buffer_head + 1;
    if (next_head == TX_RING_BUFFER) {
        next_head = 0;
    }

    // Wait until there is space in the buffer
    while (next_head == bluetooth_serial_tx_buffer_tail) {
        // TODO: Restructure st_prep_buffer() calls to be executed here during a long print.
        if (sys_rt_exec_state & EXEC_RESET) {
            return;
        } // Only check for abort to avoid an endless loop.
    }

    // Store data and advance head
    bluetooth_serial_tx_buffer[bluetooth_serial_tx_buffer_head] = data;
    bluetooth_serial_tx_buffer_head = next_head;

    // Enable Data Register Empty Interrupt to make sure tx-streaming is running
    BLUETOOTH_SERIAL_ISR_ENABLE = true;
}
#else
ISR(BLUETOOTH_SERIAL_UDRE) {
}
#endif

ISR(BLUETOOTH_SERIAL_RX) {
    uint8_t data = BLUETOOTH_URXREG;
    BLUETOOTH_USART_RX_clear_ISR_flag();
    serial_receive_single_byte(data);
}

void bluetooth_serial_init(void) {
    _prepost(UART, BLUETOOTH_SERIAL_PERIPHERAL, _SetRxInterruptHandler)(BLUETOOTH_SERIAL_RX);
    _prepost(UART, BLUETOOTH_SERIAL_PERIPHERAL, _SetTxInterruptHandler)(BLUETOOTH_SERIAL_UDRE);
}

