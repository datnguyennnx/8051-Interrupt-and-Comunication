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

mov a, r0
clr c
subb a, #008h
jz pr8

mov a, r0
clr c
subb a, #007h
jz pr7

mov a, r0
clr c
subb a, #006h
jz pr6

mov a, r0
clr c
subb a, #005h
jz pr5

mov a, r0
clr c
subb a, #004h
jz pr4

mov a, r0
clr c
subb a, #003h
jz pr3

mov a, r0
clr c
subb a, #002h
jz pr2

mov a, r0
clr c
subb a, #001h
jz pr1

mov a, r0
clr c
subb a, #000h
jz pr0

pr8:
mov p1, #080h
jmp exit

pr7:
mov p1, #08Fh
jmp exit 

pr6:
mov p1, #082h
jmp exit

pr5:
mov p1, #092h
jmp exit

pr4:
mov p1, #099h
jmp exit

pr3:
mov p1, #0B0h
jmp exit

pr2: 
mov p1, #0A4h
jmp exit

pr1:
mov p1, #0F9h
jmp exit

pr0:
mov p1, #0C0h
jmp exit

exit: ret
 





