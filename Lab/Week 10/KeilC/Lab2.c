#include <at89x51.h>
#include <stdio.h>
#define LED0 P1_0
#define LED1 P1_1
#define LED2 P1_2
#define LED3 P1_3
#define LED4 P1_4
#define LED5 P1_5
#define LED6 P1_6
#define LED7 P1_7
#define sang 1
#define tat 0



void delay(unsigned int ms){
	unsigned int i,j;
	for(i=0;i<ms;i++){
		for(j=0;j<120;j++){}
	}
}

void display_LED(unsigned char number){
	switch(number){
		case 1:
			LED0 = sang;
			LED1 = LED2 = LED3 = LED4 = LED5 = LED6 = LED7 = tat;
			break;
		case 2:
			LED1 = sang;
			LED0 = LED2 = LED3 = LED4 = LED5 = LED6 = LED7 = tat;
			break;
		case 3:
			LED2 = sang;
			LED0 = LED1 = LED3 = LED4 = LED5 = LED6 = LED7 = tat;
			break;
		case 4:
			LED3 = sang;
			LED0 = LED1 = LED2 = LED4 = LED5 = LED6 = LED7 = tat;
			break;
		case 5:
			LED4 = sang;
			LED0 = LED1 = LED2 = LED3 = LED5 = LED6 = LED7 = tat;
			break;
		case 6:
			LED5 = sang;
			LED0 = LED1 = LED2 = LED3 = LED4 = LED6 = LED7 = tat;
			break;
		case 7:
			LED6 = sang;
			LED0 = LED1 = LED2 = LED3 = LED4 = LED5 = LED7 = tat;
			break;
		case 8:
			LED7 = sang;
			LED0 = LED1 = LED2 = LED3 = LED4 = LED5 = LED6 = tat;
			break;
	}
}

void main (){
	unsigned char m;
	while(1){
		for(m=0;m<9; m++){
			display_LED(m);
			delay(500);
		}
	}
}

