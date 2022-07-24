#include <at89x52.h>
#include <string.h>
#include <stdio.h>

// initial global variables
int i;
unsigned char rdata;

void sendchar(unsigned char a)                 
{
  SBUF = a;                                
  while(TI==0){}                    
  TI=0;                                      
}

void sendstring(char *a)                 
{
  int i,n;                                     
  n = strlen(a);                           
  for(i=0;i<n;i++)                   
   {                                              
    sendchar(a[i]);                 
   }         
}

void setup (){
	TMOD = 0x20;  	  //Select Timer1, Mode 2                  	
	SCON = 0x50;			//Select Mode 1
	TH1= 0xFD;				//Set baudrate 9600
	TR1 = 1;					//Enable Timer1 
	IE = 0x90;				//Enabling Serial Interrupt
}

void serint(void) interrupt 4 using 1 {

	if(P2) // The loop checks the signal from the P2 pin. 
	{	
		rdata = SBUF; // Assign the data received to variable rdata
		RI = 0;				// Set RI flag 
	}

	switch(rdata){
		case('0'): {	
		// Set Odd LED
		P2_0 = 0; P2_2 = 0; P2_4 = 0; P2_6 = 0;
		P2_1 = 1; P2_3 = 1; P2_5 = 1; P2_7 = 1;
		break;
		}
			
		case('1'): {		
		// Set Even LED
		P2_0 = 1; P2_2 = 1; P2_4 = 1; P2_6 = 1;
		P2_1 = 0; P2_3 = 0; P2_5 = 0; P2_7 = 0;
		break;
		}			
		
		default: {	
		// Turn off all LED			
		P2_0 = 1; P2_2 = 1; P2_4 = 1; P2_6 = 1;
		P2_1 = 1; P2_3 = 1; P2_5 = 1; P2_7 = 1;
		break;
		}
	}
}


void main () 
{	
	setup();
	while(1){
		sendstring("BAUDRATE 9600 8051 MICROCONTROLLER FINAL PROJECT  \n\r");
	}
}



