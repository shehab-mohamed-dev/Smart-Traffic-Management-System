#include "../MCAL/MCAL_interrupt/interrupt_interface.h"
#include "../MCAL/MCAL_GPIO/GPIO_interface.h"
#include "../MCAL/MCAL_UART/UART_interface.h"

#include "../HAL/HAL_IR/HAL_IR_interface.h"
#include "../HAL/HAL_LED/HAL_LED_interface.h"
#include "../HAL/HAL_LCD/HAL_LCD_interface.h"

#include "../SERVICES/BIT_MATH.h"
#include "../SERVICES/STD_TYPES.h"
#define _XTAL_FREQ 8000000
#include <xc.h>
#include <stdio.h>

#define LED_SEND_PORT GPIO_PORTD
#define LED_SEND_PIN GPIO_PIN0
#define LED_RCV_PORT GPIO_PORTD
#define LED_RCV_PIN GPIO_PIN2

#define EXT_INT_PORT GPIO_PORTB 
#define EXT_INT_PIN GPIO_PIN0 

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
    //Intialize the pins for external interrupts 
    GPIO_SetPinDirection(EXT_INT_PORT, EXT_INT_PIN, GPIO_INPUT);

    //Intializes Pins for IR sensors
    IR_Init();

    LED_Init(LED_SEND_PORT,LED_SEND_PIN);
    LED_Init(LED_RCV_PORT,LED_RCV_PIN);

    interrupt_EXT_edge(FALINGEDGE);
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

    //Intialize UART
    interrupt_peripheralEnable();
    UART_init();
   
}


int main()
{
    setup();
        
    u8 piCommand;

    while(1)
    {
        if (pedestrianPressed == true) 
        {
            UART_sendByte('P'); 
            LED_Toggle(LED_SEND_PORT,LED_SEND_PIN);
            __delay_ms(300);
 
            // Clear the flag so it doesnt trigger again over and over
            pedestrianPressed = false; 
            
        }

        if (objectDetected == true) 
        {
            // Send 1 byte saying a IR sensor triggered
            UART_sendByte('I');
            LED_Toggle(LED_SEND_PORT,LED_SEND_PIN);
            __delay_ms(300);

            //Clear flag so it doesnt trigger again over and over
            objectDetected = false; 
        }
        
        if (UART_available())
        {
            // Read the incoming byte
            piCommand = UART_readByte();

            // Check if the Pi echoed back the expected 'P' or 'I'
            if(piCommand == 'P' || piCommand == 'I')
            {
                // Toggle the "Receive" LED to confirm the Pi answered
                LED_Toggle(LED_RCV_PORT, LED_RCV_PIN);
            }
        }
    
    }
}