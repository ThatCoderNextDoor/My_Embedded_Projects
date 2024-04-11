#include<pic.h>
__CONFIG(0x3F72);
#define _XTAL_FREQ 4000000
#define C1 RB0 
#define  C2 RB1  
#define C3 RB2 
#define R1 RB3 
#define R2 RB4 
#define R3 RB5 
#define R4 RB6 
#define  R5 RB7
void main()
{
TRISB=0X78;
TRISD=0X00;
TRISC=0X00;
PORTD=0X00;
PORTB=0X00;
PORTC=0X00;
while(1)
{
C1=1,C2=0,C3=0;
if(R1==1)
{while(R1==1);
	PORTC=0X80;
	__delay_ms(500);
}
else if(R2==1)
{while(R2==1);
	PORTC=0X80;
	PORTD=0X07;
__delay_ms(500);
}
else if(R3==1)
{
while(R3==1);
	PORTC=0X80;
	PORTD=0X3F;
	__delay_ms(500);
}
else if(R4==1)
{
while(R4==1);
	PORTC=0X80;
	PORTD=0XCC;
	__delay_ms(500);
}
C1=0,C2=1,C3=0;
if(R1==1)
{while(R1==1);
	PORTC=0X80;
	PORTD=0X01;
	__delay_ms(500);
}
else if(R2==1)
{while(R2==1);
	PORTC=0X80;
	PORTD=0X0F;
	__delay_ms(500);
}
else if(R3==1)
{
while(R3==1);
	PORTC=0X80;
	PORTD=0X7F;
	__delay_ms(500);
}
else if(R4==1)
{
while(R4==1);
	PORTC=0X00;
	PORTD=0X00;
	__delay_ms(500);
}
C1=0,C2=0,C3=1;
if(R1==1)
{while(R1==1);
	PORTC=0X80;
	PORTD=0X03;
	__delay_ms(500);
}
else if(R2==1)
{while(R2==1);
	PORTC=0X80;
	PORTD=0X1F;
	__delay_ms(500);
}
else if(R3==1)
{
while(R3==1);
	PORTC=0X80;
	PORTD=0XFF;
	__delay_ms(500);
}
else if(R4==1)
{
while(R4==1);
	PORTD=0X99;
	__delay_ms(500);
}
}
}