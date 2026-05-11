#ifndef LCD_CONFIG_H
#define LCD_CONFIG_H
#include "../SERVICES/STD_TYPES.h"
#include "../MCAL/MCAL_GPIO/GPIO_interface.h"


#define LCD_CNTRL_PORT GPIO_PORTE

#define RS_PIN GPIO_PIN0
#define E_PIN GPIO_PIN1

#define LCD_DATA_PORT GPIO_PORTD

#endif