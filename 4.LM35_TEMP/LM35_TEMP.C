#include<pic.h>
__CONFIG(0x3F72);
#define RS RC0
#define RW RC1
#define E RC2
void delay(int a)
{
 while(a--);
}

void command(unsigned char x)
{
PORTD=x;
RS=0;
RW=0;
E=1;
delay(200);
E=0;
}

void data(unsigned char y)
{
PORTD=y;
RS=1;
RW=0;
E=1;
delay(200);
E=0;
}
void output(unsigned char *value)
{
	while(*value!='\0')
	{data(*value);
	value++;
	}
}

void initial()
{
command(0X01);
command(0X0C);
command(0X38);
command(0X06);
}

void main()
{
ADCON0=0X01;
ADCON1=0XCE;
TRISB=0X00;PORTB=0X01;
TRISD=0X00; PORTD=0X00;
TRISC=0X00; PORTC=0X00;
int temp,a,b,c,d,v,temp1;
initial();
while(1)
{
CHS0=0;CHS1=0;CHS2=0;
ADCON0=0X05;
temp=ADRESH<<8;
temp=temp+ADRESL;
v=temp*4.8;
temp1=v/10;
a=temp1/1000;
b=(temp1%1000)/100;
c=(temp1%100)/10;
d=temp1%10;
command(0XC0);
output("TEMP-");
command(0XC6);
data(a+0X30);
data(b+0X30);
data(c+0X30);
data(d+0X30);


}}
