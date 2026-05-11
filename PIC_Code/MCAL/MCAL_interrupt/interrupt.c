#include "interrupt_config.h"
#include "interrupt_interface.h"
#include "interrupt_private.h"

#include "../MCAL_GPIO/GPIO_interface.h"

#include "../SERVICES/STD_TYPES.h"
#include "../SERVICES/BIT_MATH.h"

static void (*Global_IOC_Callback)(void) = NULL_PTR;
static void (*Global_EXT_Callback)(void) = NULL_PTR;

void interrupt_globalEnable(void)
{
    SET_BIT(INTCON,GIE);
}

void interrupt_globalDisable(void)
{
    CLR_BIT(INTCON,GIE);
}

void interrupt_peripheralEnable(void)
{
    SET_BIT(INTCON,PEIE);
}

void interrupt_EXT_enable(void)
{
    SET_BIT(INTCON,INTE);
}

void interrupt_EXT_disable(void)
{
    CLR_BIT(INTCON,INTE);
}

void interrupt_EXT_edge(u8 edge)
{
    if (edge == RISINGEDGE)
    {
        SET_BIT(OPTION_REG,INTEDG);
    }
    else
    {
        CLR_BIT(OPTION_REG,INTEDG);
    }
    
}

bool EXT_INT_SetCallback(void (*ptr)(void))
{
    if(ptr != NULL_PTR) 
    { 
        Global_EXT_Callback = ptr; 
        return true;
    }
    return false;
}

void IOC_Disable(void)
{
    CLR_BIT(INTCON,RBIE);
}

void IOC_Enable(void)
{
    //We clear the IOC flag so it doesnt instantly trigger during setup if set for any reason
    CLR_BIT(INTCON,RBIF);
    //We enable IOC
    SET_BIT(INTCON,RBIE);
}

bool IOC_SetCallback(void (*ptr)(void))
{
    if(ptr != NULL_PTR) 
    {
        Global_IOC_Callback = ptr;
        return true;
    }
    
    return false;
}


void __interrupt() ISR(void) 
{
    // Check if the interrupt was caused by IOC 
    if (GET_BIT(INTCON, RBIF)) 
    { 
        
        // Clear the flag so that we can exit ISR
        CLR_BIT(INTCON, RBIF);
        

        // Execute the Application callback if it was set
        if (Global_IOC_Callback != NULL_PTR) 
        {
            Global_IOC_Callback();
        }
            
        

    }
    
    // Check if the interrupt was caused by RB0
    if (GET_BIT(INTCON, INTF))
    {
        // Clear the flag so that we can exit ISR
        CLR_BIT(INTCON,INTF);
        
        // Execute the Application callback if it was set
        if (Global_EXT_Callback != NULL_PTR) 
        {
            Global_EXT_Callback();
        }
    }
    

    
}