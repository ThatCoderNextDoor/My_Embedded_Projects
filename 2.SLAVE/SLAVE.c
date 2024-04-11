#include<pic.h>
#define LED RB6

void slave_initial()
{
SMP=0;CKE=0;CKP=0;
SSPM3=0;SSPM1=0;
SSPM2=1;SSPM0=1;
SSPEN=1;
}
void slave_receive()
{
char x=SSPBUF;
while(SSPIF==0);
if(x=='a'){LED=1;}
else if(x=='b'){LED=0;}
}
void main()
{
TRISB=0X00;PORTB=0X00;
TRISC=0X38;
slave_initial();
while(1){
slave_receive();
}
}