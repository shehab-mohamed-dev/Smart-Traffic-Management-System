#ifndef UART_INTERFACE_H
#define UART_INTERFACE_H


#include "../SERVICES/STD_TYPES.h"


//Run before using UART
//Intializes the EUSART module
//Turns on Tx & Rx
void UART_init(void);

//Sends a single byte of data, this function will wait until the Tx buffer
//is empty
void UART_sendByte(u8 data);

//Use this function when sending string, it will convert the 
void UART_sendString(const u8* string);

//Read a byte of data from buffer
u8 UART_readByte(void);

//Checks if UART is avialable
bool UART_available();



#endif