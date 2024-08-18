#include<pic.h>
__CONFIG(0x3f72);
#define _XTAL_FREQ 4000000
#define lower RB0
#define upper RB1
#define buzz RB2
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
{	PORTD=z;
	RS=1;
	RW=0;
	EN=1;
	__delay_ms(1);
	EN=0;
}
void output(unsigned char *value)
{
	while(*value!='\0')
	{
	data(*value);
	value++;}
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
TRISB=0X03;PORTB=0X00;
TRISD=0X00;
TRISC=0X00;
int x;
initial();
while(1){
if(lower==0 && upper==0)
{	command(0x01);
	command(0x80);
	output("MOTOR ON");
	__delay_ms(1000);
	x=0;
}
else if(lower==1 && upper==0)
{	if(x==0){
		command(0x01);
		command(0x80);
		output("MOTOR ON");
		__delay_ms(1000);
		}
	else 
	{
		command(0x01);
		command(0x80);
		output("MOTOR OFF");
		__delay_ms(1000);
	}
}
else if(upper==1 && lower==1)
{	command(0x01);
	command(0x80);
	output("MOTOR OFF");
	buzz=1;
	__delay_ms(1000);
	x=1;
	buzz=0;
}
}

}