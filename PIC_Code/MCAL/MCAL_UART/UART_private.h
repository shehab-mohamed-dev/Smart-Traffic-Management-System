#ifndef UART_PRIVATE_H
#define UART_PRIVATE_H


#define F_CPU 8000000UL
#define SPBRG_VAL_HIGH_SPEED(BAUD)  (unsigned char)((((F_CPU) + (8UL * (BAUD))) / (16UL * (BAUD))) - 1)

//Tx status & controls register
#define TXSTA  (*((volatile unsigned char*)0x98)) 
//Buffer for sending messages
#define TXREG  (*((volatile unsigned char*)0x19))

////// TXSTA Bits
//CLR for telling EUSART chip of Asynchronous mode
#define SYNC 4
//SET to Turn on PICs Tx pin
#define TXEN 5
//SET to get better resolution
#define BRGH 2

//Rx Status & control 
#define RCSTA  (*((volatile unsigned char*)0x18)) 
//Recieved messages buffer
#define RCREG  (*((volatile unsigned char*)0x1A))

/////// RCST Bits 
//Set for enabling serial port
#define SPEN 7
//Set to turn on Rx 
#define CREN 4

//Peripheral interrupt resgister
#define PIR1   (*((volatile unsigned char*)0x0C))

//Setting baud rate
#define SPBRG (*((volatile unsigned char*)0x99))

//Bit to indicate that the Tx buffer is full
//0 if busy & 1 if empty
#define TXIF 4

//Bit to indicate if Rx buffer is empty
//1 When full 0 when empty
#define RCIF 5


#endif