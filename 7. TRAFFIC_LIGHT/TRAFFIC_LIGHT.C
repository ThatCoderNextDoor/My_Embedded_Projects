#include<pic.h>
__CONFIG(0x3F72);
#define _XTAL_FREQ 4000000
void main()
{
TRISB=0X00;
TRISD=0X00;
PORTB=0X0E;
PORTD=0X01;
__delay_ms(3000);
PORTB=0X1E;
PORTD=0X00;
__delay_ms(1000);
PORTB=0X0D;
PORTD=0X02;
__delay_ms(3000);
PORTB=0X2D;
PORTD=0X00;
__delay_ms(1000);
PORTB=0X0B;
PORTD=0X04;
__delay_ms(3000);
PORTB=0X4B;
PORTD=0X00;
__delay_ms(1000);
PORTB=0X07;
PORTD=0X08;
__delay_ms(3000);
PORTB=0X87;
PORTD=0X00;
__delay_ms(1000);
}