#include<pic.h>
__CONFIG(0x3F72);
#define _XTAL_FREQ 4000000
#define upper RB1
#define lower RB0
void main()
{
TRISB=0x03;
PORTB=0x00;
int i,x;
if(lower==0 && upper==0)
{
	PORTB=0X0C;
	__delay_ms(500);
	x=0;
}
else if(lower==1 && upper==0)
{	if(x==0){
		PORTB=0X0C;
		__delay_ms(500);
		}
	else 
	{
		PORTB=0X00;
		__delay_ms(500);
	}
}
else if(upper==1 && lower==1)
{	PORTB=0X00;
	__delay_ms(500);
	x=1;
}
else 
{	PORTB=0X00;
	__delay_ms(500);
}
}