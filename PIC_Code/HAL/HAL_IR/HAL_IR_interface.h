#ifndef HAL_IR_INTERFACE_H_
#define HAL_IR_INTERFACE_H_

#include "../SERVICES/STD_TYPES.h"

#define IR1_PIN        GPIO_PIN7
#define IR2_PIN        GPIO_PIN6
#define IR3_PIN        GPIO_PIN5
#define IR4_PIN        GPIO_PIN4


//Intializes IR pins
//Sets them to be input 
void IR_Init(void);

//Check if the pin is pulled low returns true if high returns false 
bool IR_ReadState(u8 sensor_pin);


#endif