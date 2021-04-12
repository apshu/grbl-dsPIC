/**
  SCCP8 Generated Driver File 

  @Company
    Microchip Technology Inc.

  @File Name
    sccp8.c

  @Summary
    This is the generated driver implementation file for the SCCP8 driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This header file provides implementations for driver APIs for SCCP8. 
    Generation Information : 
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.125
        Device            :  dsPIC33CH512MP506
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.36B
        MPLAB             :  MPLAB X v5.20
*/

/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

/**
  Section: Included Files
*/

#include "sccp8_tmr.h"

/**
  Section: Data Type Definitions
*/

/**
  SCCP8 Driver Hardware Instance Object

  @Summary
    Defines the object required for the maintenance of the hardware instance.

  @Description
    This defines the object required for the maintenance of the hardware
    instance. This object exists once per hardware instance of the peripheral.

*/
typedef struct _SCCP8_TMR_OBJ_STRUCT
{

    /* Timer Elapsed */
    bool                                                    primaryTimer16Elapsed;
    bool                                                    secondaryTimer16Elapsed;
    bool                                                    Timer32Elapsed;
} SCCP8_TMR_OBJ;

static SCCP8_TMR_OBJ sccp8_timer_obj;
void SCCP8_TMR_Initialize(void)
{
    // CCPON enabled; MOD 16-Bit/32-Bit Timer; CCSEL disabled; CCPSIDL disabled; TMR32 32 Bit; CCPSLP disabled; TMRPS 1:1; CLKSEL FOSC/2; TMRSYNC disabled; 
    CCP8CON1L = (0x8020 & 0x7FFF); //Disabling CCPON bit
    //RTRGEN disabled; ALTSYNC disabled; ONESHOT disabled; TRIGEN disabled; IOPS Each Time Base Period Match; SYNC None; OPSRC Timer Interrupt Event; 
    CCP8CON1H = 0x00;
    //ASDGM disabled; SSDG disabled; ASDG 0; PWMRSEN disabled; 
    CCP8CON2L = 0x00;
    //ICGSM Level-Sensitive mode; ICSEL IC8; AUXOUT Disabled; OCAEN enabled; OENSYNC disabled; 
    CCP8CON2H = 0x100;
    //OETRIG disabled; OSCNT None; POLACE disabled; PSSACE Tri-state; 
    CCP8CON3H = 0x00;
    //ICDIS disabled; SCEVT disabled; TRSET disabled; ICOV disabled; ASEVT disabled; TRIG disabled; ICGARM disabled; TRCLR disabled; 
    CCP8STATL = 0x00;
    //TMR 0; 
    CCP8TMRL = 0x00;
    //TMR 0; 
    CCP8TMRH = 0x00;
    //PR 48032; 
    CCP8PRL = 0xBBA0;
    //PR 13; 
    CCP8PRH = 0x0D;
    //CMP 0; 
    CCP8RAL = 0x00;
    //CMP 0; 
    CCP8RBL = 0x00;
    //BUF 0; 
    CCP8BUFL = 0x00;
    //BUF 0; 
    CCP8BUFH = 0x00;

    CCP8CON1Lbits.CCPON = 0x1; //Enabling CCP

    IFS9bits.CCP8IF = 0;

    IFS9bits.CCT8IF = 0;
      
    // Enabling SCCP8 interrupt.
    IEC9bits.CCP8IE = 1;

    // Enabling SCCP8 interrupt.
    IEC9bits.CCT8IE = 1;

}

void SCCP8_TMR_Start( void )
{
    /* Reset the status information */
    sccp8_timer_obj.primaryTimer16Elapsed = false;
    sccp8_timer_obj.secondaryTimer16Elapsed = false;
    sccp8_timer_obj.Timer32Elapsed = false;

    /* Start the Timer */
    CCP8CON1Lbits.CCPON = true;
}

void SCCP8_TMR_Stop( void )
{
    /* Stop the Timer */
    CCP8CON1Lbits.CCPON = false;
}

void __attribute__ ((weak)) SCCP8_TMR_Timer32CallBack(void)
{
    // Add your custom callback code here
}

void __attribute__ ( ( interrupt, no_auto_psv ) ) _CCT8Interrupt ( void )
{
    /* Check if the Timer Interrupt/Status is set */
    if(IFS9bits.CCT8IF)
    {         
        sccp8_timer_obj.Timer32Elapsed = true;
		// SCCP8 Timer 32 bit callback function 
		SCCP8_TMR_Timer32CallBack();
        IFS9bits.CCT8IF = 0;
    }
}



void SCCP8_TMR_Period32BitSet( uint32_t value )
{
    /* Update the period values */
    CCP8PRL = (value & 0x0000FFFF);
    CCP8PRH = ((value & 0xFFFF0000)>>16);

    /* Reset the status information */
    sccp8_timer_obj.Timer32Elapsed = false;
}

uint32_t SCCP8_TMR_Period32BitGet( void )
{
    uint32_t periodVal = 0xFFFFFFFF;
    
    /* get the timer period value and return it */
    periodVal = (((uint32_t)CCP8PRH <<16) | CCP8PRL);

    return(periodVal);
}

void SCCP8_TMR_Counter32BitSet ( uint32_t value )
{
    /* Update the counter values */
    CCP8TMRL = (value & 0x0000FFFF);
    CCP8TMRH = ((value & 0xFFFF0000)>>16);
    /* Reset the status information */
    sccp8_timer_obj.Timer32Elapsed = false;
}

uint32_t SCCP8_TMR_Counter32BitGet( void )
{
    uint32_t counterVal = 0xFFFFFFFF;

    /* get the timer period value and return it */
    counterVal = (((uint32_t)CCP8TMRH <<16) | (CCP8TMRL));

    return(counterVal);
}

bool SCCP8_TMR_Timer32ElapsedThenClear(void)
{
    bool status;
    
    status = sccp8_timer_obj.Timer32Elapsed ;
    
    if(status == true)
    {
        sccp8_timer_obj.Timer32Elapsed = false;
    }
    return status;
}
/**
 End of File
*/