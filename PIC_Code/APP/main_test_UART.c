#include "../MCAL/MCAL_UART/UART_interface.h"
#include "../MCAL/MCAL_GPIO/GPIO_interface.h"
#include "../SERVICES/BIT_MATH.h"


void setup()
{
    GPIO_Init();
    UART_init();
    UART_sendString((u8*)"UART Working!\n");
}
int main()
{
    setup();
    while(1) {
        u8 received_char = UART_readByte();
        UART_sendByte(received_char);
    }
}
