#include<pic.h>
#define sw RD0

void master_initial()
{
SMP=0;CKE=0;CKP=0;
SSPM3=0;SSPM2=0;SSPM1=0;SSPM0=0;
SSPEN=1;
}

void master_trans(char x)
{
SSPBUF=x;
}

void main()
{
TRISD=0X01;PORTD=0X00;
TRISC=0X10;PORTC=0X00;
master_initial();
while(1)
{
if(sw==1)
{
master_trans('a');
}
else{
master_trans('b');
}
}
}