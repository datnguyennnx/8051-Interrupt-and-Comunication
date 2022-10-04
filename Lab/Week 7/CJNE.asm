input:mov a, p2
anl a, #0Fh
mov r0, a
mov a, p2
anl a, #0F0h
swap a
add a, R0
mov r0, a
check:
mov b, r0
mov a, #008h
subb a, b
jc input
pr8:
mov a, R0
cjne a, #008h, pr7
mov p1, #080h
jmp exit

pr7:
mov a, R0
cjne a, #007h, pr6
mov p1, #08Fh
jmp exit 

pr6:
mov a, R0
cjne a, #006h, pr5
mov p1, #082h
jmp exit

pr5:
mov a, R0
cjne a, #005h, pr4
mov p1, #092h
jmp exit

pr4:
mov a, R0
cjne a, #004h, pr3
mov p1, #099h
jmp exit

pr3:
mov a, R0
cjne a, #003h, pr2
mov p1, #0B0h
jmp exit

pr2:
mov a, R0
cjne a, #002h, pr1 
mov p1, #0A4h
jmp exit

pr1:
mov a, R0
cjne a, #001h, pr0
mov p1, #0F9h
jmp exit

pr0:
mov p1, #0C0h
jmp exit
exit: ret
 





