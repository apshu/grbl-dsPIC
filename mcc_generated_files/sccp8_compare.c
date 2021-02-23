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

#include "sccp8_compare.h"

/** OC Mode.

  @Summary
    Defines the OC Mode.

  @Description
    This data type defines the OC Mode of operation.

*/

static uint16_t         gSCCP8Mode;

/**
  Section: Driver Interface
*/


void SCCP8_COMPARE_Initialize (void)
{
    // CCPON enabled; MOD Dual Edge Compare, Buffered(PWM); CCSEL disabled; CCPSIDL disabled; TMR32 16 Bit; CCPSLP disabled; TMRPS 1:4; CLKSEL FOSC/2; TMRSYNC disabled; 
    CCP8CON1L = (0x8045 & 0x7FFF); //Disabling CCPON bit
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
    //PR 10000; 
    CCP8PRL = 0x2710;
    //PR 0; 
    CCP8PRH = 0x00;
    //CMP 0; 
    CCP8RAL = 0x00;
    //CMP 0; 
    CCP8RBL = 0x00;
    //BUF 0; 
    CCP8BUFL = 0x00;
    //BUF 0; 
    CCP8BUFH = 0x00;

    CCP8CON1Lbits.CCPON = 0x1; //Enabling CCP

    gSCCP8Mode = CCP8CON1Lbits.MOD;

}

void __attribute__ ((weak)) SCCP8_COMPARE_CallBack(void)
{
    // Add your custom callback code here
}

void SCCP8_COMPARE_Tasks( void )
{
    if(IFS9bits.CCP8IF)
    {
		// SCCP8 COMPARE callback function 
		SCCP8_COMPARE_CallBack();
		
        IFS9bits.CCP8IF = 0;
    }
}

void __attribute__ ((weak)) SCCP8_COMPARE_TimerCallBack(void)
{
    // Add your custom callback code here
}


void SCCP8_COMPARE_TimerTasks( void )
{
    if(IFS9bits.CCT8IF)
    {
		// SCCP8 COMPARE Timer callback function 
		SCCP8_COMPARE_TimerCallBack();
	
        IFS9bits.CCT8IF = 0;
    }
}

void SCCP8_COMPARE_Start( void )
{
    /* Start the Timer */
    CCP8CON1Lbits.CCPON = true;
}

void SCCP8_COMPARE_Stop( void )
{
    /* Start the Timer */
    CCP8CON1Lbits.CCPON = false;
}

void SCCP8_COMPARE_SingleCompare16ValueSet( uint16_t value )
{   
    CCP8RAL = value;
}


void SCCP8_COMPARE_DualCompareValueSet( uint16_t priVal, uint16_t secVal )
{

    CCP8RAL = priVal;

    CCP8RBL = secVal;
}

void SCCP8_COMPARE_DualEdgeBufferedConfig( uint16_t priVal, uint16_t secVal )
{

    CCP8RAL = priVal;

    CCP8RBL = secVal;
}

void SCCP8_COMPARE_CenterAlignedPWMConfig( uint16_t priVal, uint16_t secVal )
{

    CCP8RAL = priVal;

    CCP8RBL = secVal;
}

void SCCP8_COMPARE_EdgeAlignedPWMConfig( uint16_t priVal, uint16_t secVal )
{

    CCP8RAL = priVal;

    CCP8RBL = secVal;
}

void SCCP8_COMPARE_VariableFrequencyPulseConfig( uint16_t priVal )
{
    CCP8RAL = priVal;
}

bool SCCP8_COMPARE_IsCompareCycleComplete( void )
{
    return(IFS9bits.CCP8IF);
}

bool SCCP8_COMPARE_TriggerStatusGet( void )
{
    return( CCP8STATLbits.TRIG );
    
}

void SCCP8_COMPARE_TriggerStatusSet( void )
{
    CCP8STATLbits.TRSET = 1;
}

void SCCP8_COMPARE_TriggerStatusClear( void )
{
    /* Clears the trigger status */
    CCP8STATLbits.TRCLR = 0;
}

bool SCCP8_COMPARE_SingleCompareStatusGet( void )
{
    return( CCP8STATLbits.SCEVT );
}

void SCCP8_COMPARE_SingleCompareStatusClear( void )
{
    /* Clears the trigger status */
    CCP8STATLbits.SCEVT = 0;
    
}
/**
 End of File
*/
