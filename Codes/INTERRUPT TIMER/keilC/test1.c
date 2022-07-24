#include <REGX51.H>
void delay (int time){
       while(time--);
}
int t=0;
void main(){
	while (1){
	TMOD=0x01;//timer 0, che do 1
	ET0=1;// kich hoat ngat timer 0;
	TR0=1;
	EA=1;//dong cau dao tong- cho phep ngat toan cuc	
	P2=0;
	delay(15000);
	P2=0xff;
	delay(15000);
	}
}
void ngat() interrupt 1{
	long a=50000;
	t++;// dem thoi gian
	TH0=0xfc;
	TL0=0x18;
	TR0=1;// khoi dong bo dinh thoi
	if (t>=10000){ // t dat truoc thoi gian 10s
		t=0;
		P1_3=0;
		while(a--){};
		P1_3 =1;
	}
	
	
}