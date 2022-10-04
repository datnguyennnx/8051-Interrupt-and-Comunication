mov 40h, #0C0h
mov 41h, #0F9h
mov 42h, #0A4h
mov 43h, #0B0h
mov 44h, #099h
mov 45h, #092h
mov 46h, #082h
mov 47h, #08Fh
mov 48h, #080h
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
add a, #040h
mov r0, a
mov p1, @r0
jmp input

 





