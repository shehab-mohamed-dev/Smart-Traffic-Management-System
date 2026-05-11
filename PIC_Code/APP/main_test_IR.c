#include "../HAL/HAL_IR/HAL_IR_interface.h"
#include "../HAL/HAL_LED/HAL_LED_interface.h"

#include "../MCAL/MCAL_interrupt/interrupt_interface.h"
#include "../MCAL/MCAL_GPIO/GPIO_interface.h"

#include "../SERVICES/STD_TYPES.h"

//Needs to be voltaile so compiler doesnt remove it as its only called within the ISR
//Static as it doesnt needs to be seen anywhere else
volatile static bool g_SendI2CMessage = false;

void callback_ISR()
{
        //IOC has no option for triggering on a certain edge, triggeres on any edge, so we do a check to see if any of the ports are actually 
        //Pulled low by the IR sensor indicating an object
        bool pin1 = IR_ReadState(IR1_PIN);
        bool pin2 = IR_ReadState(IR2_PIN);
        bool pin3 = IR_ReadState(IR3_PIN);
        bool pin4 = IR_ReadState(IR4_PIN);

        if (pin1 || pin2 || pin3 || pin4)
        {
            g_SendI2CMessage = true;
        }
        
}

void setup()
{
    IR_Init();
    interrupt_globalEnable();
    IOC_Enable();
    IOC_SetCallback(callback_ISR);
    LED_Init(GPIO_PORTC,GPIO_PIN0);
}

int main()
{

    setup();
    while(1)
    {
        if(g_SendI2CMessage)
        {
            LED_Toggle(GPIO_PORTC,GPIO_PIN0); 
            g_SendI2CMessage = false;
        }
    }

}
