/**
  SCCP7 Generated Driver File 

  @Company
    Microchip Technology Inc.

  @File Name
    sccp7.c

  @Summary
    This is the generated driver implementation file for the SCCP7 driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This header file provides implementations for driver APIs for SCCP7. 
    Generation Information : 
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.125
        Device            :  dsPIC33CH512MP508
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

#include "sccp7_compare.h"

/** OC Mode.

  @Summary
    Defines the OC Mode.

  @Description
    This data type defines the OC Mode of operation.

*/

static uint16_t         gSCCP7Mode;

/**
  Section: Driver Interface
*/


void SCCP7_COMPARE_Initialize (void)
{
    // CCPON enabled; MOD Dual Edge Compare, Buffered(PWM); CCSEL disabled; CCPSIDL disabled; TMR32 16 Bit; CCPSLP disabled; TMRPS 1:4; CLKSEL FOSC/2; TMRSYNC disabled; 
    CCP7CON1L = (0x8045 & 0x7FFF); //Disabling CCPON bit
    //RTRGEN disabled; ALTSYNC disabled; ONESHOT disabled; TRIGEN disabled; IOPS Each Time Base Period Match; SYNC None; OPSRC Timer Interrupt Event; 
    CCP7CON1H = 0x00;
    //ASDGM disabled; SSDG disabled; ASDG 0; PWMRSEN disabled; 
    CCP7CON2L = 0x00;
    //ICGSM Level-Sensitive mode; ICSEL IC7; AUXOUT Disabled; OCAEN enabled; OENSYNC disabled; 
    CCP7CON2H = 0x100;
    //OETRIG disabled; OSCNT None; POLACE disabled; PSSACE Tri-state; 
    CCP7CON3H = 0x00;
    //ICDIS disabled; SCEVT disabled; TRSET disabled; ICOV disabled; ASEVT disabled; TRIG disabled; ICGARM disabled; TRCLR disabled; 
    CCP7STATL = 0x00;
    //TMR 0; 
    CCP7TMRL = 0x00;
    //TMR 0; 
    CCP7TMRH = 0x00;
    //PR 10000; 
    CCP7PRL = 0x2710;
    //PR 0; 
    CCP7PRH = 0x00;
    //CMP 0; 
    CCP7RAL = 0x00;
    //CMP 0; 
    CCP7RBL = 0x00;
    //BUF 0; 
    CCP7BUFL = 0x00;
    //BUF 0; 
    CCP7BUFH = 0x00;

    CCP7CON1Lbits.CCPON = 0x1; //Enabling CCP

    gSCCP7Mode = CCP7CON1Lbits.MOD;

}

void __attribute__ ((weak)) SCCP7_COMPARE_CallBack(void)
{
    // Add your custom callback code here
}

void SCCP7_COMPARE_Tasks( void )
{
    if(IFS9bits.CCP7IF)
    {
		// SCCP7 COMPARE callback function 
		SCCP7_COMPARE_CallBack();
		
        IFS9bits.CCP7IF = 0;
    }
}

void __attribute__ ((weak)) SCCP7_COMPARE_TimerCallBack(void)
{
    // Add your custom callback code here
}


void SCCP7_COMPARE_TimerTasks( void )
{
    if(IFS9bits.CCT7IF)
    {
		// SCCP7 COMPARE Timer callback function 
		SCCP7_COMPARE_TimerCallBack();
	
        IFS9bits.CCT7IF = 0;
    }
}

void SCCP7_COMPARE_Start( void )
{
    /* Start the Timer */
    CCP7CON1Lbits.CCPON = true;
}

void SCCP7_COMPARE_Stop( void )
{
    /* Start the Timer */
    CCP7CON1Lbits.CCPON = false;
}

void SCCP7_COMPARE_SingleCompare16ValueSet( uint16_t value )
{   
    CCP7RAL = value;
}


void SCCP7_COMPARE_DualCompareValueSet( uint16_t priVal, uint16_t secVal )
{

    CCP7RAL = priVal;

    CCP7RBL = secVal;
}

void SCCP7_COMPARE_DualEdgeBufferedConfig( uint16_t priVal, uint16_t secVal )
{

    CCP7RAL = priVal;

    CCP7RBL = secVal;
}

void SCCP7_COMPARE_CenterAlignedPWMConfig( uint16_t priVal, uint16_t secVal )
{

    CCP7RAL = priVal;

    CCP7RBL = secVal;
}

void SCCP7_COMPARE_EdgeAlignedPWMConfig( uint16_t priVal, uint16_t secVal )
{

    CCP7RAL = priVal;

    CCP7RBL = secVal;
}

void SCCP7_COMPARE_VariableFrequencyPulseConfig( uint16_t priVal )
{
    CCP7RAL = priVal;
}

bool SCCP7_COMPARE_IsCompareCycleComplete( void )
{
    return(IFS9bits.CCP7IF);
}

bool SCCP7_COMPARE_TriggerStatusGet( void )
{
    return( CCP7STATLbits.TRIG );
    
}

void SCCP7_COMPARE_TriggerStatusSet( void )
{
    CCP7STATLbits.TRSET = 1;
}

void SCCP7_COMPARE_TriggerStatusClear( void )
{
    /* Clears the trigger status */
    CCP7STATLbits.TRCLR = 0;
}

bool SCCP7_COMPARE_SingleCompareStatusGet( void )
{
    return( CCP7STATLbits.SCEVT );
}

void SCCP7_COMPARE_SingleCompareStatusClear( void )
{
    /* Clears the trigger status */
    CCP7STATLbits.SCEVT = 0;
    
}
/**
 End of File
*/
