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
void output(unsigned char *value)
{while(*value!='\0')
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
void main()
{
TRISC=0X00;
TRISD=0X00;
initial();
int i;
while(1)
{
command(0x86);
output("WELCOME");
__delay_ms(3000);
command(0x01);
__delay_ms(1);
command(0x81);
output("PALANI MURUGAN");
command(0xC5);
output("MEDICAL");
__delay_ms(3000);
command(0x01);
__delay_ms(1);
command(0x85);
output("CONTACT");
command(0xC5);
output("0422 1977");
__delay_ms(3000);
command(0x01);
__delay_ms(1);
command(0x84);
output("THANK YOU!");
__delay_ms(3000);
command(0x01);
__delay_ms(1);
}
}