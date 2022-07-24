## COMPUTER ORGANIZATION AND ARCHITECTURE
### 8051 MICROCONTROLLER USING THE C PROGRAMMING LANGUAGE INTERRUPTS AND COMMUNICATES

#### Group member
<div  style="text-align:left; padding-left: 20px; ">
<div>

##### 1. Nguyen Tien Dat - 20119125 
##### 2. Vu Van Duc - 20119128
##### 3. Mai Xuan Hoai - 20119131
##### 4. Nguyen Minh Man - 20119142

</div>
</div>

**On this topic.** The group studied and focused on 8051 microcontrollers using the C programming language for interrupts and communication. The group has gone deep into learning and implementing a number of small applications, such as:

**Application for interrupt timer:** Using the Timer 0 interrupt to control 8 LEDs flashing at port P2 and a timer every 10 seconds to turn on the LED on port P1_3, the lights will turn off after a few seconds. (The 8051's frequency is XTAL = 12MHz.)

<p align="center"><img src="Designs/INTERRUPT%20TIMER/BLOCK%20DIAGRAM%20OF%20TIMER.png" /></p>

<p align="center">Block diagram for interrupt timer</p>

**Application for interrupt external:** In the AT89C52, there are two external interrupt inputs at pins INT0 (P3.2) and INT1 (P3.3). When there is an event on the INT pin (edge down or level 0), it will generate an interrupt (if enabled).

<p align="center"><img src="Designs/INTERRUPT%20EXTERNAL/BLOCK%20DIAGRAM%20OF%20INT.png" /></p>

<p align="center">Block diagram for interrupt external</p>

**Application for UART serial data transfer and  UART interrupt:** Communicating from the computer's Com port via IC Max232 to the 8051 microcontroller.

<p align="center"><img src="Designs/UART/Block%20Diagram%20UART(%20Program%20).png"></p>


<p align="center">Block diagram for UART serial data transfer and  UART interrupt</p>

All circuit diagram designs and proteus simulation files. We leave those files in the **codes folder** and the circuit blueprints in the **designs folder**. Check them out and run the simulation program. We use the following apps: KeliC ver5, Proteus 8.10, Terminal, and Virtual Com.We have written a report on the Microcontroller 8051 in the **docs folder**. Check them out in the Docs folder. If you have any questions or encounter any issues while playing this simulation, please contact the following email address. We will explain any problems.
##### Gmail: official.nguyendat@gmail.com

