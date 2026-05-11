#include "SERVICES/BIT_MATH.h"
#include "SERVICES/STD_TYPES.h"

#include "HAL_IR_config.h"
#include "HAL_IR_private.h"
#include "HAL_IR_interface.h"

#include "../MCAL/MCAL_GPIO/GPIO_interface.h"

void IR_Init(void)
{
    // SET all 4 IR sensor pins as INPUTS 
    GPIO_SetPinDirection(IR_SENSOR_PORT, IR1_PIN, GPIO_INPUT);
    GPIO_SetPinDirection(IR_SENSOR_PORT, IR2_PIN, GPIO_INPUT);
    GPIO_SetPinDirection(IR_SENSOR_PORT, IR3_PIN, GPIO_INPUT);
    GPIO_SetPinDirection(IR_SENSOR_PORT, IR4_PIN, GPIO_INPUT);
}

bool IR_ReadState(u8 sensorPin)
{
    
    if(!GPIO_GetPinValue(IR_SENSOR_PORT,sensorPin)) 
    { 
        //If low then its detected an object
        return true;
    }
    else
    {
        //Other wise HIGH
        return false;
    }

}