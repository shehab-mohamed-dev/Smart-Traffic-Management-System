#include "../MCAL/MCAL_interrupt/interrupt_interface.h"
#include "../MCAL/MCAL_UART/UART_interface.h"

#include "../HAL/HAL_IR/HAL_IR_interface.h"
#include "../HAL/HAL_LCD/HAL_LCD_interface.h"

#include "../SERVICES/BIT_MATH.h"
#include "../SERVICES/STD_TYPES.h"
#include <stdio.h>

//Needs to be voltaile so compiler doesnt remove it as its only called within the ISR
//Static as it doesnt needs to be seen anywhere else
volatile static bool objectDetected = false;
volatile static bool pedestrianPressed = false;

void pedestrian_buttons_ISR()
{
    pedestrianPressed = true;
}

void objectDetected_IR_ISR()
{
        //IOC has no option for triggering on a certain edge, triggeres on any edge, so we do a check to see if any of the ports are actually 
        //Pulled low by the IR sensor indicating an object
        bool pin1 = IR_ReadState(IR1_PIN);
        bool pin2 = IR_ReadState(IR2_PIN);
        bool pin3 = IR_ReadState(IR3_PIN);
        bool pin4 = IR_ReadState(IR4_PIN);

        if (pin1 || pin2 || pin3 || pin4)
        {
            objectDetected = true;
        }
        
}


void setup()
{
    //Intializes Pins for IR sensors
    IR_Init();
    
    //Intialize Pins for LCD
    LCD_init();
    
    //Intialize pins & registers for UART
    UART_init();

    //This is the interrupt for the pedestrian_buttons
    //Any pedestrian clicking button will trigger this callback
    EXT_INT_SetCallback(pedestrian_buttons_ISR);
    //This is the interrupt for the IR sensors
    //Any IR sensor triggers will trigger this callback
    IOC_SetCallback(objectDetected_IR_ISR);

    //We enable the external interrupt first
    interrupt_EXT_enable();
    IOC_Enable();

    //Finally, once everything has been properly intialized we activate interrupts
    interrupt_globalEnable();
   
}


int main()
{
    setup();
    
    u8 piCommand;
    
    while(1)
    {
        if (pedestrianPressed == true) 
        {
            // Send 1 byte saying a pedestrian button has been pressed
            UART_sendByte('P'); 
            
            // Clear the flag
            pedestrianPressed = false; 
            
        }

        if (objectDetected == true) 
        {
            // Send 1 byte saying a IR sensor triggered
            UART_sendByte('I');
            objectDetected = false; 
        }

        if(UART_available())
        {
            // Read byte
            piCommand = UART_readByte();

            // Plot on LCD
            LCD_sendData(piCommand);
        }
    
    }
}