#include<pic.h>
__CONFIG(0X3F72);

void delay()
{T2CON=0X7F;
CCP1CON=0X0C;
PR2=186;
CCPR1L=124.0248;
while(TMR2IF==0);
TMR2IF=0;
}
void main()
{
TRISC=0X00;
delay();
}
