#include<pic.h>
__CONFIG(0x3f72);
#define _XTAL_FREQ 4000000
#define RS RC0
#define RW RC1
#define EN RC2
#define C1 RD0
#define C2 RD1
#define C3 RD2
#define R1 RD3
#define R2 RD4
#define R3 RD5
#define R4 RD6
unsigned char d='\0';

void command(unsigned char y)
{	PORTB=y;
	RS=0;
	RW=0;
	EN=1;
	__delay_ms(100);
	EN=0;}
void initial(){
	command(0X38);
	command(0X01);
	command(0X06);
	command(0X0C);}

void data(unsigned char x)
{	PORTB=x;
	RS=1;
	RW=0;
	EN=1;
	__delay_ms(100);
	EN=0;}

char keypad()
{C1=1;C2=0;C3=0;
if(R1==1){while(R1);data('*');return '1';}
if(R2==1){while(R2);data('*');return '4';}
if(R3==1){while(R3);data('*');return '7';}
if(R4==1){while(R4);data('*');return '*';}
C1=0;C2=1;C3=0;
if(R1==1){while(R1);data('*');return '2';}
if(R2==1){while(R2);data('*');return '5';}
if(R3==1){while(R3);data('*');return '8';}
if(R4==1){while(R4);data('*');return '0';} 
C1=0;C2=0;C3=1;
if(R1==1){while(R1);data('*');return '3';}
if(R2==1){while(R2);data('*');return '6';}
if(R3==1){while(R3);data('*');return '9';}
if(R4==1){while(R4);data('*');return '#';}
}

void output( unsigned char *value)
{	while(*value!='\0')	
{		data(*value);
		value++;	}
}

void main()
{	TRISB=0X00;	
	TRISC=0X00;
	TRISD=0X07;
	PORTB=0X00;	PORTC=0X00;	PORTD=0X00;
	
	char check_p[4]={'1','2','3','4'};
	char user_p[4]={'0','0','0','0'};
	int i=0;
	initial();
	while(1)
	{	command(0X80);	
		output("Enter Password");
		__delay_ms(10);
		command(0x01);
		while(i<=5)
		{
			while(d=='\0')
			{d=keypad();
			}
		__delay_ms(10);
			user_p[i]=d;
			i++;
			d=keypad();
		__delay_ms(10);
			while(d=='#')
			{d=keypad();
			break;			}
		}		
		d='\0';
		__delay_ms(10);
	if(check_p[0]==user_p[0] && check_p[1]==user_p[1] && check_p[2]==user_p[2] && check_p[3]==user_p[3])	
	{command(0X80);
		output("VALID");
		__delay_ms(1000);
		command(0x01);	}
	else		
		{	command(0X80);
			output("INVALID");		
			__delay_ms(1000);
			command(0x01);		}
	}
	}

