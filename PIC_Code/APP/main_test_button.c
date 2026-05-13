#include "../HAL/HAL_LED/HAL_LED_interface.h"
#include "../MCAL/MCAL_interrupt/interrupt_interface.h"
#include "../MCAL/MCAL_GPIO/GPIO_interface.h"

#include "../SERVICES/STD_TYPES.h"

//Needs to be voltaile so compiler doesnt remove it as its only called within the ISR
//Static as it doesnt needs to be seen anywhere else
volatile static bool g_SendI2CMessage = false;

void callback_buttons_ISR()
{
    g_SendI2CMessage = true;
        
}

void setup()
{
    LED_Init(GPIO_PORTC,GPIO_PIN0);
    LED_Off(GPIO_PORTC,GPIO_PIN0);
    EXT_INT_SetCallback(callback_buttons_ISR);
    interrupt_EXT_enable();
    interrupt_globalEnable();
    
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
