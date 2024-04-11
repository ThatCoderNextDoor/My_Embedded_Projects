#include<pic.h>
__CONFIG(0X3F72);
#define _XTAL_FREQ 4000000
void main()
{
TRISB=0X00;
TRISD=0X00;
PORTD=0X00;
PORTD=0X01;
PORTB=0X07;
__delay_ms(10);
PORTD=0X02;	
PORTB=0X6D;
__delay_ms(10);
}