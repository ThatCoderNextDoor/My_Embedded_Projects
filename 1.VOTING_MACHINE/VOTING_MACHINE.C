#include<pic.h>
__CONFIG(0x3F72);
#define _XTAL_FREQ 4000000
#define SW1 RB0
#define SW2 RB1
#define SW3 RB2
#define SW4 RB3
#define RS RC0
#define RW RC1
#define EN RC2
void write(unsigned int dat,const unsigned char address)
{
EEADR=address;
EEDATA=dat+1;
EEPGD=0;
WREN=1;
EECON2=0X55;
EECON2=0XAA;
WR=1;
while(EEIF==0);
WREN=0;
EEIF=0;
}
int read(const unsigned char address)
{int d=0;
EEADR=address;
EEPGD=0;
WREN=0;
RD=1;
return d=EEDATA;
}
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
void output(unsigned char *value)
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
void choose_party()
{
command(0x01);command(0x80);
output("Pls choose party");
__delay_ms(3000);
command(0x01);command(0x80);
output("1.DMK2.ADMK3.BJP");
__delay_ms(2000);
if(SW2==1)
{while(SW2==1);    //choosing dmk
write(1,0x0001);
command(0x01);command(0x80);
output("DMK");
__delay_ms(1000);
}
else if(SW3==1)
{while(SW3==1);         //choosing admk
write(1,0x0002);
command(0x01);command(0x80);
output("ADMK");
__delay_ms(1000);
}
else if(SW4==1)
{while(SW4==1);
write(1,0x0003);        //choosing bjp
command(0x01);command(0x80);
output("BJP");
__delay_ms(1000);
}
}
void result()
{int a=0,b=0,c=0;
command(0x01);command(0x80);    //when sw1 and sw2 pressed at same time
output("Preparing for ");
__delay_ms(10);
command(0xC0);
output("   result");__delay_ms(1000);
a=read(0x0001);
b=read(0x0002);
c=read(0x0003);
command(0x01);command(0x80);    
output("DMK  ADMK  BJP");__delay_ms(10);
command(0xC0);output(a+0x30);__delay_ms(10);
command(0xC6);output(b+0x30);__delay_ms(10);
command(0xCB);output(c+0x30);__delay_ms(10);
__delay_ms(2000);
if(a>b && a>c)       
{
command(0x01);command(0x80);
output("DMK is winner!");}
else if(b>a && b>c)
{
command(0x01);command(0x80);
output("ADMK is winner");} 
else if(c>a && c>b){
command(0x01);command(0x80);
output("BJP is winner");}
command(0x01);
}

void main()
{TRISB=0X0F;TRISD=0X00;TRISC=0X00;
initial();
__delay_ms(100);
while(SW1!=1 && SW2!=1)  //checking if switches 1 and 2 both are not pressed at same time
{
command(0x80);
output("WELCOME TO POLL");
__delay_ms(3000);
command(0x01);command(0x80);
output("Waiting for");
__delay_ms(10);
command(0xC0);
output("agent response");
__delay_ms(2000);
while(SW1==1);  //agent approval 
choose_party(); 
__delay_ms(1000);
command(0x01);command(0x80);
output("Your voting is");
__delay_ms(10);
command(0xC0);
output("received");
__delay_ms(5000);
command(0x01);
}
if(SW1==1 && SW2==1)
{ result();}

}