 #include<pic.h>
__CONFIG(0x3F72);

void loadvalue(int x)
{
if(x>500)
{int y=x/500;
for(int i=0;i<y;i++)
{TMR1H=0X0B;
TMR1L=0XDB;
while(TMR1IF==0);
TMR1IF=0;
}
}
else
{
float temp= ((x*1000)/8);
float load=65535-temp;
/*TMR1H=
TMR1L=*/
while(TMR1IF==0);
TMR1IF=0;
}
}

void delay(int num)
{
T1CON=0X3D;
loadvalue(num);
}

void main()
{
TRISD=0X00;
PORTD=0X01;
delay(5000);
PORTD=0X00;
delay(10000);
}