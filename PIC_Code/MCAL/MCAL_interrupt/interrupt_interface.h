#ifndef INT_INTERFACE_H
#define INT_INTERFACE_H

#include "../SERVICES/STD_TYPES.h"

//Exposed so user can set rising or falling edge
#define RISINGEDGE 1
#define FALINGEDGE 0

/* -------------------------------------------------------------------------- */
/* GLOBAL & PERIPHERAL INTERRUPT CONTROL                  */
/* -------------------------------------------------------------------------- */

// Goes to the INTCON register and sets the Global Interrupt Enable bit (GIE = 1)
// This is the main switch; it must be called before ANY interrupt can fire.
void interrupt_globalEnable(void);

// Goes to the INTCON register and clears the Global Interrupt Enable bit (GIE = 0)
void interrupt_globalDisable(void);

// Goes to the INTCON register and sets the Peripheral Interrupt Enable bit (PEIE = 1)
// Required for I2C communication
void interrupt_peripheralEnable(void);

/* -------------------------------------------------------------------------- */
/* External Interrupts - for pedestrian buttons          */
/* -------------------------------------------------------------------------- */

// Sets INTE bit in INTCON
// Call for enabling external interrupts on RB0
void interrupt_EXT_enable(void);

// CLRs INTE bit in INTCON
void interrupt_EXT_disable(void);

//Change the edge on which the interrupts are triggered
void interrupt_EXT_edge(u8 edgeType);

//Pass function to this so its called when external interrupt on RB0 is triggered
bool EXT_INT_SetCallback(void (*ptr_to_func)(void));


/* -------------------------------------------------------------------------- */
/* INTERRUPT-ON-CHANGE (IOC) - FOR YOUR IR SENSORS ON RB4-RB7          */
/* -------------------------------------------------------------------------- */

// Goes to INTCON register and sets the Port B Change Interrupt Enable (RBIE = 1)
// Note: Hardware does not allow edge selection for these pins (triggers on both).
void IOC_Enable(void);

// Goes to INTCON register and clears the Port B Change Interrupt Enable (RBIE = 0)
void IOC_Disable(void);

// This function allows the interrupt to run the function defined in the app layer.
bool IOC_SetCallback(void (*ptr)(void));

#endif