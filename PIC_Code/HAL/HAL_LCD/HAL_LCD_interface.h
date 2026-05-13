#ifndef HAL_LCD_INTERFACE_H_
#define HAL_LCD_INTERFACE_H_

#include "../SERVICES/STD_TYPES.h"


//Commands for user
// 8-bit data mode, 2-line display, 5x8 font
#define Eight_bitMode  0x38 
// Display ON, Cursor OFF, Blink OFF
#define displayOnly  0x0C 
// Clear the entire screen
#define CLR_SCREEN  0x01 
// Entry mode: Cursor moves right automatically after printing a letter
#define incrementCursorRight  0x06 


//Intialization of LCD
void LCD_init(void);

//Sends command
void LCD_sendCommand(u8 command);

//Sends ASCII 
void LCD_sendData(u8 data);

//Helper function for sending an entire string
void LCD_sendString(const u8* string);

#endif 