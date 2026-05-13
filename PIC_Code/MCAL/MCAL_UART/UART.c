#include "UART_config.h"
#include "UART_interface.h"
#include "UART_private.h"

#include "../SERVICES/BIT_MATH.h"


void UART_init(void) {
    
    
    SPBRG = SPBRG_VAL_HIGH_SPEED(9600); 
    
    // Configure Transmit Status & Control (TXSTA)
    // Turn on the transmitter
    SET_BIT(TXSTA, TXEN); 
    // Select high-speed baud rate formula
    SET_BIT(TXSTA, BRGH);  
    // Clear SYNC to enforce Asynchronous (UART) mode
    CLR_BIT(TXSTA, SYNC);  
    
    // Configure Pin Directions (TRISC)
    // Both Rx & Tx need to be input 
    GPIO_SetPinDirection(UART_COM_PORT,PIN_RX,GPIO_INPUT);
    GPIO_SetPinDirection(UART_COM_PORT,PIN_TX,GPIO_INPUT);


    // Configure Receive Status & Control (RCSTA)
    // Turn on the entire Serial Port module
    SET_BIT(RCSTA, SPEN);  
    // Turn on the receiver to listen for data
    SET_BIT(RCSTA, CREN);  
}



void UART_sendByte(u8 data)
{

    //We need to wait for as long as the transmit buffer is full
    //Busy wait
    while (!GET_BIT(PIR1,TXIF)){}
    
    TXREG = data;
}


void UART_sendString(const u8* string)
{
    // Safety check: ensure the pointer isn't NULL before trying to read it
    if (string != (void*)0) 
    {
        // Loop continuously until the value pointed to is the null terminator
        while (*string != '\0') 
        {
            // Send the current character
            UART_sendByte(*string);
            
            // Move the pointer to the next memory address (the next character)
            string++; 
        }
    }
}


u8 UART_readByte(void)
{

    // Wait (block) until a new character arrives
    while (!GET_BIT(PIR1, RCIF)) {
        // Do nothing, wait for data
    }

   //Return buffer data
    return RCREG;
}