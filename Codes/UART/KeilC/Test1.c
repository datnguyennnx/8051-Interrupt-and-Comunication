#include<reg51.h>
#include<stdio.h>

sbit rs=P1^0;			//P1^0 is pin P1.0 on 8051
sbit rw=P1^1;			//P1^1 is pin P1.1 on 8051
sbit en=P1^2;			//P1^2 is pin P1.2 on 8051
void lcdcmd(unsigned char);
void lcddat(unsigned char);
unsigned char c;
unsigned int i;
void delay();
void main(){
	SCON = 0x50;		//Set 8 data bit 1 stop bit 1 start bit
	TMOD = 0x20;		//Set Timer1 Mode2
	TH1 = 0xFD;			//Set baud rate is 9600
	TR1 = 1;
	TI = 1;
	P2=0x00;
		lcdcmd(0x38); 	//matrix 5x7 2 lines
		delay();
		lcdcmd(0x01);		//clrscr
		delay();
		lcdcmd(0x0c);		//cursor off, display on
		delay();
	i=0;
	while(1)
	{
			i++;
			if (i%32==0)
			{
				lcdcmd(0x01);
			}
			else if (i%32!=0 && i%16==0)
			{
				lcdcmd(0xC0);		//new line
			} 
				else 
			{
		c = _getkey();//receive character from computer
		lcddat(c);}		//display c on display 16x2
			}
	}
void lcdcmd(unsigned char val){		//this use for set hex command 
	P2=val;
	rs=0;
	rw=0;
	en=1;
	en=0;
}
void lcddat(unsigned char val){//this function use to display character
P2=val;//C will compile val to 8-bits data and transmit--  
	rs=1;			//--parallel to P2.0 – P2.7 
	rw=0;
	en=1;
	en=0;
}
void delay(){		//pause app approximate 1ms
	unsigned int i;
	for(i=0;i<12000;i++);
}
