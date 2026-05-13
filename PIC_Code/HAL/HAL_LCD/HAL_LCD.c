#include "HAL_LCD_config.h"
#include "HAL_LCD_interface.h"
#include "HAL_LCD_private.h"

#include <xc.h>
#include "../MCAL/MCAL_timer0/timer0_interface.h"
#include "../MCAL/MCAL_GPIO/GPIO_interface.h"

#include "../SERVICES/STD_TYPES.h"
#include "../SERVICES/BIT_MATH.h"


static void LCD_enablePulse(void)
{
    GPIO_SetPinValue(LCD_CNTRL_PORT, E_PIN , GPIO_HIGH);
    __delay_ms(2); // Give the LCD time to notice the high signal
    GPIO_SetPinValue(LCD_CNTRL_PORT, E_PIN , GPIO_LOW);
    __delay_ms(2); // Give the LCD time to process the latched data

}

void LCD_init(){
    // Pins for data
    GPIO_SetPinDirection(LCD_DATA_PORT,GPIO_PIN0,GPIO_OUTPUT);
    GPIO_SetPinDirection(LCD_DATA_PORT,GPIO_PIN1,GPIO_OUTPUT);
    GPIO_SetPinDirection(LCD_DATA_PORT,GPIO_PIN2,GPIO_OUTPUT);
    GPIO_SetPinDirection(LCD_DATA_PORT,GPIO_PIN3,GPIO_OUTPUT);
    GPIO_SetPinDirection(LCD_DATA_PORT,GPIO_PIN4,GPIO_OUTPUT);
    GPIO_SetPinDirection(LCD_DATA_PORT,GPIO_PIN5,GPIO_OUTPUT);
    GPIO_SetPinDirection(LCD_DATA_PORT,GPIO_PIN6,GPIO_OUTPUT);
    GPIO_SetPinDirection(LCD_DATA_PORT,GPIO_PIN7,GPIO_OUTPUT);



    //Pins for control
    GPIO_SetPinDirection(LCD_CNTRL_PORT,RS_PIN,GPIO_OUTPUT);
    GPIO_SetPinDirection(LCD_CNTRL_PORT,E_PIN,GPIO_OUTPUT);

    __delay_ms(40);

    LCD_sendCommand(Eight_bitMode);
    __delay_ms(1);

    LCD_sendCommand(displayOnly);
    __delay_ms(1);



    LCD_sendCommand(CLR_SCREEN);
    __delay_ms(2);

    LCD_sendCommand(incrementCursorRight);

}

static void LCD_setMode_data(void){

    GPIO_SetPinValue(LCD_CNTRL_PORT,RS_PIN,GPIO_HIGH);
}

void LCD_sendData(u8 data){

    LCD_setMode_data();

    //8 bit asci character should be sent
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN0,GET_BIT(data,0));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN1,GET_BIT(data,1));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN2,GET_BIT(data,2));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN3,GET_BIT(data,3));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN4,GET_BIT(data,4));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN5,GET_BIT(data,5));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN6,GET_BIT(data,6));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN7,GET_BIT(data,7));

    LCD_enablePulse();
}

static void LCD_setMode_command(void){

    GPIO_SetPinValue(LCD_CNTRL_PORT,RS_PIN,GPIO_LOW);
}

void LCD_sendCommand(u8 command){

    LCD_setMode_command();

    //Send Data
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN0,GET_BIT(command,0));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN1,GET_BIT(command,1));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN2,GET_BIT(command,2));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN3,GET_BIT(command,3));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN4,GET_BIT(command,4));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN5,GET_BIT(command,5));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN6,GET_BIT(command,6));
    GPIO_SetPinValue(LCD_DATA_PORT,GPIO_PIN7,GET_BIT(command,7));

    //Tell LED data is coming
    LCD_enablePulse();

}

void LCD_sendString(const u8* string)
{
    u8 i = 0;
    while (string[i] != '\0')
    {
        LCD_sendData(string[i]);
        i++;
    }
}