#include<pic.h>
__CONFIG(0x3F72);
#define _XTAL_FREQ 4000000
#define RS RC0
#define RW RC1
#define EN RC2

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
TRISB=0X00;
PORTB=0X00;
int count=0;
initial();
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
		count++;
		if(count>=200 && count<=300)
		{
			PORTB=0X01;
			__delay_ms(10);
		}
		else
		{PORTB=0X00;
		}
}
}
}


}}