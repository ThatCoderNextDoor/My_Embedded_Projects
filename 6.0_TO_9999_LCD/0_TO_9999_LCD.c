#include<pic.h>
__CONFIG(0x3F72);
#define _XTAL_FREQ 4000000
#define RS RC0
#define RW RC1
#define EN RC2
#define D0 RD0
#define D1 RD1
#define D2 RD2
#define D3 RD3
#define D4 RD4
#define D5 RD5
#define D6 RD6 
#define D7 RD7

void command(unsigned char y)
{
PORTD=y;
RS=0;
RW=0;
EN=1;
__delay_ms(1);
EN=0;
}

void data(unsigned char z)
{PORTD=z;
RS=1;
RW=0;
EN=1;
__delay_ms(1);
EN=0;
}
void initial()
{
command(0x38);
command(0x01);
command(0x06);
command(0x0C);
}
void main()
{
TRISC=0X00;
TRISD=0X00;
initial();
int w,x,y,z;

for(int i=0;i<=9;i++)
 {
  for(int j=0;j<=9;j++)
   	{
    for(int k=0;k<=9;k++)
		{
         for(int l=0;l<=9;l++)
		{
		command(0xC0);
		data(i+0x30);
		__delay_ms(10);
		command(0xC1);
		data(j+0x30);
		__delay_ms(10);
		command(0xC2);
		data(k+0x30);
		__delay_ms(10);
		command(0xC3);
		data(l+0x30);
		__delay_ms(10);

		}
}
}
}

}