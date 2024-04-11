#include<pic.h>
__CONFIG(0x3F72);
#define _XTAL_FREQ 4000000
void main()
{TRISD=0X00;
PORTD=0X01;
TRISB=0X00;
PORTB=0X3F;
__delay_ms(1000);
PORTB=0X06;
__delay_ms(1000);
PORTB=0X5B;
__delay_ms(1000);
PORTB=0X4F;
__delay_ms(1000);
PORTB=0X66;
__delay_ms(1000);
PORTB=0X6D;
__delay_ms(1000);
PORTB=0X7D;
__delay_ms(1000);
PORTB=0X07;
__delay_ms(1000);
PORTB=0X7F;
__delay_ms(1000);
PORTB=0X6F;
__delay_ms(1000);
}
