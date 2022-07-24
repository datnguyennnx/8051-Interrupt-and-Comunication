
#include<main.h>

sbit LED1 = P1^0; //khai bao LED1 o chan P1.0
sbit LED2 = P1^1; //khai bao LED1 o chan P1.0


int main()
	{
			EA  = 1;		//cho phep ngat toan cuc
			EX0 = 1;    //chon ngat ngoai INT0
			IT0 = 1;    //chon ngat canh xuong
			LED2=0;			//ban dau cho LED2 tat
			while(1)
				{
						LED1=1;
						delay_ms(200);
						LED1=0;
						delay_ms(200);
				}
	}
/*==================================================================================
	*Chuc nang: phuc vu ngat INT0
===================================================================================*/
void External0_ISR() interrupt 0
{
	LED2 = ~LED2;	//dao trang thai LED2
} 