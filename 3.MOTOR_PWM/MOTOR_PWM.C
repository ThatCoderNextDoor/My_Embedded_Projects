 #include<pic.h>
__CONFIG(0X3F72);

void delay_incre()
{T2CON=0X7F;
CCP1CON=0X0C;
for(int i=1;i<255;i++)
{PR2=249;
CCPR1L=i;
while(TMR2IF==0);
TMR2IF=0;
}
}
void delay_decre()
{T2CON=0X7F;
CCP1CON=0X0C;
for(int i=255;i>1;i--)
{PR2=249;
CCPR1L=i;
while(TMR2IF==0);
TMR2IF=0;

}
}
void main()
{
TRISC=0X00;
delay_incre();
delay_decre();
}

/*
void delay1()
{T2CON=0X7F;
CCP1CON=0X0C;
PR2=249;
CCPR1L=62.25;
while(TMR2IF==0);
TMR2IF=0;
}
void delay2()
{T2CON=0X7F;
CCP1CON=0X0C;
PR2=249;
CCPR1L=124.5;
while(TMR2IF==0);
TMR2IF=0;
}
void delay3()
{T2CON=0X7F;
CCP1CON=0X0C;
PR2=249;
CCPR1L=186.75;
while(TMR2IF==0);
TMR2IF=0;
}
void main()
{
TRISC=0X00;
while(1)
{
delay1();
delay2();
delay3();
delay2();
delay1();
}
}*/