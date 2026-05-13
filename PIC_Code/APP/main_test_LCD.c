#include "../HAL/HAL_LCD/HAL_LCD_interface.h"

#include "../MCAL/MCAL_GPIO/GPIO_interface.h"

#include "../SERVICES/STD_TYPES.h"

#define _XTAL_FREQ 8000000
#include <xc.h>
#include <stdio.h>

void setup(void)
{
    GPIO_Init();
    LCD_init();
}

void main(void)
{
    // 1. Run initialization
    setup();

    // 2. Print static characters (Top Row)
    // We cast to (u8*) to prevent compiler warnings
    LCD_sendString((u8*)"Traffic System:");

    // 3. Variables for our number
    u16 carCount = 42;
    char buffer[16]; // A text array to hold the translated number string

    // 4. Move the cursor to the bottom row
    // 0xC0 is the HD44780 hex command for "Row 2, Column 1"
    LCD_sendCommand(0xC0); 

    // 5. Convert the integer into an ASCII string
    // The "%d" tells sprintf where to inject the number
    sprintf(buffer, "Cars: %d", carCount); 

    // 6. Send the formatted string to the screen
    LCD_sendString((u8*)buffer);

    while(1)
    {
        LCD_sendCommand(0xC0);
        carCount++;
        sprintf(buffer, "Cars: %d", carCount); 
        LCD_sendString((u8*)buffer);
        __delay_ms(500);
    }


}