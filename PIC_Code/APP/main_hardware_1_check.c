#include "../MCAL/MCAL_GPIO/GPIO_interface.h"
#include "../MCAL/MCAL_interrupt/interrupt_interface.h"

#include "../HAL/HAL_LED/HAL_LED_interface.h"

#include "../SERVICES/BIT_MATH.h"
#include "../SERVICES/STD_TYPES.h"
#include <xc.h>
#include <stdio.h>

#define _XTAL_FREQ 8000000


//Needs to be voltaile so compiler doesnt remove it as its only called within the ISR
//Static as it doesnt needs to be seen anywhere else
volatile static bool pedestrianPressed = false;

#define LED_PORT GPIO_PORTD
#define LED_PIN GPIO_PIN0

void pedestrian_buttons_ISR()
{
    pedestrianPressed = true;
}


void setup()
{

    GPIO_SetPinDirection(GPIO_PORTB, GPIO_PIN0, GPIO_INPUT);
    LED_Init(LED_SEND_PORT,LED_PIN);
    LED_On(LED_SEND_PORT,LED_PIN);


    interrupt_EXT_edge(FALINGEDGE);

    //This is the interrupt for the pedestrian_buttons
    //Any pedestrian clicking button will trigger this callback
    EXT_INT_SetCallback(pedestrian_buttons_ISR);

    //We enable the external interrupt first
    interrupt_EXT_enable();

    interrupt_globalEnable();

}



int main()
{
    setup();

    while(1) // CRITICAL: This keeps the program running
    {
        if (pedestrianPressed)
        {
            LED_Off(LED_SEND_PORT, LED_PIN); 
            __delay_ms(5000); 
            pedestrianPressed = false; 
        }
        else
        {
            __delay_ms(1000);
            LED_Off(LED_SEND_PORT, LED_PIN);
            __delay_ms(1000);
            LED_On(LED_SEND_PORT, LED_PIN);
        }
    }
    return 0;
}