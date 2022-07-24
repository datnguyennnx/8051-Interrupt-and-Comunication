#include <at89x52.h>
unsigned char rdata;

void delay( unsigned int temp ){
	{
		while(--temp);
	}
}

void setup (){
	TMOD = 0x20;  //Timer1 in Mode2.                     	
	SCON=0x50;		//Asynchronous mode, 8-bit data and 1-stop bit	
	TH1=-3;	
	TR1 = 1;
	IE = 0x90;
}
void serint(void) interrupt 4 using 1 {
	if(RI)
	{	
		rdata=SBUF;
		RI=0;
		switch(rdata){
			case('0'): {break;}
			case('1'): {P3_7 = 1;}
		}
	}
}
void main () 
{	
	unsigned char trans_data;
	setup();
	
	while(1){
	int i ;
	for ( i = 65 ; i < 91; i++){
		SBUF = i;
		while(TI==0){
		delay(1000);
		};
	TI=0;
	}
}

}


