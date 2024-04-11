#include<pic.h>
__CONFIG(0x3f72);
#define _XTAL_FREQ 4000000
#define RS RC0
#define RW RC1
#define EN RC2
#define LED RB0
void delay(int n) //delay function
{
for(int i=0;i<n*20;i++)
{
   PS0=1;PS1=1;PS2=1;
T0CS=0;
PSA=0;
TMR0=59.6875;
while(TMR0IF==0);
TMR0IF=0;
}
}
void command(unsigned char y)  //command function for lcd
{
PORTD=y;
RS=0;
RW=0;
EN=1;
__delay_ms(1);
EN=0;
}

void data(unsigned char z) //data function for lcd
{PORTD=z;
RS=1;
RW=0;
EN=1;
__delay_ms(1);
EN=0;
}
void output(unsigned char *value)  //output functio for string in lcd
{
	while(*value!='\0')
	{data(*value);
	value++;
}
}
void initial()
{
command(0x38);
command(0x01);
command(0x06);
command(0x0C);
}
//void joystick()  //joystick function for bluetooth commands

void main()
{
TRISD=0X00;TRISC=0X80;TRISB=0X00;
PORTC=0X00;PORTD=0X00;PORTB=0X00;
initial();
TXSTA=0X24;  
RCSTA=0X90;
BRGH=1;  
SPBRG=25;
command(0x80);
output("WELCOME");
delay(1);
command(0x01);
delay(1);
command(0x80);
output("READY TO RECEIVE");
delay(1);
command(0x01);
while(1)
{
	// while(RCREG==1 || RCREG==2 || RCREG==3 || RCREG==4);	
	if(RCREG=='1')
	{LED=1;
	command(0x80);
	output("FORWARD");
	delay(1);
	command(0x01);
	}
	else if(RCREG=='2')
	{
	command(0x80);
	output("REVERSE");
	delay(1);
	command(0x01);
	}
	else if(RCREG=='3')
	{
	command(0x80);
	output("RIGHT");
	delay(1);
	command(0x01);
	}
	else if(RCREG=='4')
	{
	command(0x80);
	output("LEFT");
	delay(1);
	command(0x01);
	} 

}
}