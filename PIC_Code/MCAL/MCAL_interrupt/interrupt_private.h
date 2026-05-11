#ifndef INT_PRIVATE_H
#define INT_PRIVATE_H


//According to the data sheet, the INTE,GIE & INTF bits are the 4th, 7th, & 1st bit
//respectively in the INTCON register (located 0x0B) (Page 55)
#define INTCON (*((volatile u8*)0x0B))
#define INTE 4

//Global interrupt pin
#define GIE 7

//Peripheral interrupt Enable (For com protocols)
#define PEIE 6 

//Port change interrupt enable
#define RBIE 3 
//RBIF Flag for PORTB interrupts (RB4 - RB7)
#define RBIF 0

//This flag tells you if the interrupt is external
#define INTF 1

//INTEDG for setting clock edge is in the OPTION_REG register (located 0x81) (Page 55)
#define OPTION_REG (*((volatile u8*)0x81))
//1 for rising edge 0 for falling edge
#define INTEDG 6



#endif