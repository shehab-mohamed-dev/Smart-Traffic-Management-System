#ifndef LCD_INTERFACE_H
#define LCD_INTERFACE_H

#include "../SERVICES/STD_TYPES.h"

//Call in order to intialize the LCD
void LCD_init(void);

//Put LCD into mode where it reads inputs as commands
void LCD_setMode_Command(u8 command);

//Put LCD into mode where it reads inputs as data for display
void LCD_setMode_data(u8 data);

//Send a string to the LCD
void LCD_sendSting(const u8* string);


#endif