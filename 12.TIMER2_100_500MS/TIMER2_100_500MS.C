#include<pic.h>
__CONFIG(0X3F72);

void delay()
{T2CON=0X7F;
PR2=195.3125;
while(TMR2IF==0);
TMR2IF=0;
}
void main()
{
TRISD=0X00;
for(int i=0;i<2;i++)
{
PORTD=0X01;
delay();
}
for(int i=0;i<10;i++)
{
PORTD=0X00;
delay();
}
}