#include<pic.h>
__CONFIG(0x3F72);
#define C1 RB0
#define C2 RB1
#define C3 RB2
#define R1 RB3
#define R2 RB4 
#define R3 RB5
#define R4 RB6
void main()
{
TRISB=0X78;
TRISD=0X00;
TRISC=0X00;
PORTC=0X01;
PORTB=0X00;
int a[]={0x3F,0x06,0x5B,0x4F,0x66,0x06D,0x7D,0x07,0x7F,0x6F,0x3E,0x76};
while(1)
{
C1=1,C2=0,C3=0;
if(R1==1)
{while(R1==1);
	PORTD=a[1];
}
else if(R2==1)
{while(R2==1);
	PORTD=a[4];
}
else if(R3==1)
{
while(R3==1);
	PORTD=a[7];
}
else if(R4==1)
{
while(R4==1);
	PORTD=a[10];
}
C1=0,C2=1,C3=0;
if(R1==1)
{while(R1==1);
	PORTD=a[2];
}
else if(R2==1)
{while(R2==1);
	PORTD=a[5];
}
else if(R3==1)
{
while(R3==1);
	PORTD=a[8];
}
else if(R4==1)
{
while(R4==1);
	PORTD=a[0];
}
C1=0,C2=0,C3=1;
if(R1==1)
{while(R1==1);
	PORTD=a[3];
}
else if(R2==1)
{while(R2==1);
	PORTD=a[6];
}
else if(R3==1)
{
while(R3==1);
	PORTD=a[9];
}
else if(R4==1)
{
while(R4==1);
	PORTD=a[11];
}
}
}
