// This file has been prepared for Doxygen automatic documentation generation.
/*! \file ********************************************************************
 *
 * Atmel Corporation
 *
 * \li File:               eeprom.c
 * \li Compiler:           IAR EWAAVR 3.10c
 * \li Support mail:       avr@atmel.com
 *
 * \li Supported devices:  All devices with split EEPROM erase/write
 *                         capabilities can be used.
 *                         The example is written for ATmega48.
 *
 * \li AppNote:            AVR103 - Using the EEPROM Programming Modes.
 *
 * \li Description:        Example on how to use the split EEPROM erase/write
 *                         capabilities in e.g. ATmega48. All EEPROM
 *                         programming modes are tested, i.e. Erase+Write,
 *                         Erase-only and Write-only.
 *
 *                         $Revision: 1.6 $
 *                         $Date: Friday, February 11, 2005 07:16:44 UTC $
 ****************************************************************************/
#include <xc.h>
#include <stdint.h>

#include "grbl.h"

static uint8_t EEPROM_ramBuffer[2048];
#ifdef ENABLE_M500_M501
static bool eeprom_firstAccess = true;
static __prog__ uint8_t EEPROM_FLASH_storage[2048] __attribute__((space(prog), aligned(FLASH_ERASE_PAGE_SIZE_IN_PC_UNITS))) = {0x11, 0x22, 0x33, 0x44, 0x55, 0x66};

typedef struct {

    union {
        uint32_t flashcell;

        struct {
            uint16_t data16;
            uint16_t opcode_nop; //Zero
        };
    };
} flashword_uncomp_t;

bool eeprom_recall_NVN_storage(void) {
    uint32_t rdOffset;
    size_t ramOFS = 0;
    flashword_uncomp_t flashword;
    memset(EEPROM_ramBuffer, 0xff, sizeof(EEPROM_ramBuffer));
    for (rdOffset = 0; rdOffset < sizeof (EEPROM_ramBuffer); rdOffset += 2, ramOFS += 2) {
        flashword.flashcell = FLASH_ReadWord24(((uint32_t) EEPROM_FLASH_storage) + rdOffset);
        if (flashword.opcode_nop) {
            return false;
        }
        EEPROM_ramBuffer[ramOFS] = flashword.data16 & 0xFF;
        EEPROM_ramBuffer[ramOFS + 1] = (flashword.data16>>8) & 0xFF;
    }
    eeprom_firstAccess = !eeprom_NVN_compare_RAM(); //Try with next access if not successful (for any reason))
    return !eeprom_firstAccess;
}

/* returns true if NVM and RAM are same, and NVM is valid */
bool eeprom_NVN_compare_RAM(void) {

    uint32_t rdOffset;
    size_t ramOFS = 0;
    flashword_uncomp_t flashword;
    for (rdOffset = 0; rdOffset < sizeof (EEPROM_ramBuffer); rdOffset += 2, ramOFS += 2) {
        flashword.flashcell = FLASH_ReadWord24(((uint32_t) EEPROM_FLASH_storage) + rdOffset);
        if (flashword.opcode_nop) {
            return false;
        }
        if ((EEPROM_ramBuffer[ramOFS] | (EEPROM_ramBuffer[ramOFS + 1] << 8)) != flashword.data16) {
            return false;
        }
    }
    return true;
}

bool eeprom_to_NVN_storage(void) {
    if (!eeprom_NVN_compare_RAM()) {
        //EEPROM writing has to be performed

        //FLASH erase
        uint32_t FLASH_addr = __builtin_addr(&EEPROM_FLASH_storage);
        uint_fast8_t numPages = sizeof (EEPROM_FLASH_storage) / FLASH_ERASE_PAGE_SIZE_IN_PC_UNITS;
        for (; numPages; --numPages, FLASH_addr += FLASH_ERASE_PAGE_SIZE_IN_PC_UNITS) {
            FLASH_Unlock(FLASH_UNLOCK_KEY);
            bool flash_success = FLASH_ErasePage(FLASH_addr);
            FLASH_Lock();
            if (!flash_success) {
                return false;
            }
        }

        //FLASH write
        FLASH_addr = __builtin_addr(&EEPROM_FLASH_storage);
        flashword_uncomp_t flashRow[FLASH_WRITE_ROW_SIZE_IN_INSTRUCTIONS];
        uint16_t *ramptr = (uint16_t*) EEPROM_ramBuffer;
        uint16_t numRows = (sizeof (EEPROM_ramBuffer) + FLASH_WRITE_ROW_SIZE_IN_PC_UNITS - 1) / FLASH_WRITE_ROW_SIZE_IN_PC_UNITS;
        uint16_t numInst;
        for (; numRows; --numRows) {
            for (numInst = 0; numInst < (sizeof (flashRow) / sizeof (flashRow[0])); ++numInst) {
                flashRow[numInst].opcode_nop = 0;
                flashRow[numInst].data16 = *ramptr++;
            }
            FLASH_Unlock(FLASH_UNLOCK_KEY);
            bool flash_success = FLASH_WriteRow24(FLASH_addr, (uint32_t*)flashRow);
            FLASH_Lock();
            if (!flash_success) {
                return false;
            }
            FLASH_addr += FLASH_WRITE_ROW_SIZE_IN_PC_UNITS;
        }
    }
    //FLASH verify
    return eeprom_NVN_compare_RAM();
}
#endif 

/*! \brief  Read byte from EEPROM.
 *
 *  This function reads one byte from a given EEPROM address.
 *
 *  \note  The CPU is halted for 4 clock cycles during EEPROM read.
 *
 *  \param  addr  EEPROM address to read from.
 *  \return  The byte read from the EEPROM address.
 */
unsigned char eeprom_get_char(unsigned int addr) {
#ifdef ENABLE_M500_M501
    if (eeprom_firstAccess) {
        eeprom_recall_NVN_storage();
    }
#endif
    if (addr < sizeof (EEPROM_ramBuffer)) {
        return EEPROM_ramBuffer[addr];
    }
    return 0xFF;
}

/*! \brief  Write byte to EEPROM.
 *
 *  This function writes one byte to a given EEPROM address.
 *  The differences between the existing byte and the new value is used
 *  to select the most efficient EEPROM programming mode.
 *
 *  \note  The CPU is halted for 2 clock cycles during EEPROM programming.
 *
 *  \note  When this function returns, the new EEPROM value is not available
 *         until the EEPROM programming time has passed. The EEPE bit in EECR
 *         should be polled to check whether the programming is finished.
 *
 *  \note  The EEPROM_GetChar() function checks the EEPE bit automatically.
 *
 *  \param  addr  EEPROM address to write to.
 *  \param  new_value  New EEPROM value.
 */
void eeprom_put_char(unsigned int addr, unsigned char new_value) {
#ifdef ENABLE_M500_M501
    if (eeprom_firstAccess) {
        eeprom_recall_NVN_storage();
    }
#endif
    if (addr < sizeof (EEPROM_ramBuffer)) {
        EEPROM_ramBuffer[addr] = new_value;
    }
}

// Extensions added as part of Grbl 

void memcpy_to_eeprom_with_checksum(unsigned int destination, char *source, unsigned int size) {
    unsigned char checksum = 0;
    for (; size > 0; size--) {
        checksum = (checksum << 1) || (checksum >> 7);
        checksum += *source;
        eeprom_put_char(destination++, *(source++));
    }
    eeprom_put_char(destination, checksum);
}

int memcpy_from_eeprom_with_checksum(char *destination, unsigned int source, unsigned int size) {
    unsigned char data, checksum = 0;
    for (; size > 0; size--) {
        data = eeprom_get_char(source++);
        checksum = (checksum << 1) || (checksum >> 7);
        checksum += data;
        *(destination++) = data;
    }
    return (checksum == eeprom_get_char(source));
}

// end of file
