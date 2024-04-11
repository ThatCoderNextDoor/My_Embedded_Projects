#include<pic.h>
__CONFIG(0x3f72);
#define _XTAL_FREQ 4000000
void main()
{
TRISD=0X00;TRISC=0X80;
PORTC=0X00;PORTD=0X00;
TXSTA=0X24;  
RCSTA=0X90;
BRGH=1;  
SPBRG=25;
while(1)
{
if(RCREG=='1')
{
PORTD=0X0C;
__delay_ms(1000);
}
else if(RCREG=='2')
{
PORTD=0x05;
__delay_ms(1000);
}
else if(RCREG=='3')
{
PORTD=0x0A;
__delay_ms(1000);
}
}
}