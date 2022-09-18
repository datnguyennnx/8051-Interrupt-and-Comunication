; Compare input not equal 0->9 print F while equal 0-> print T

include 'emu8086.inc'
org 100h

mov ah, 1
int 21h   
jmp checklessthan10


resultTrue:
    mov dl, "T"
    mov ah, 2
    int 21h
    jmp exit
    
resultFalse:
    mov dl, "F"
    mov ah, 2
    int 21h  
    print " " 
    mov ah, 1
    int 21h
    jmp checklessthan10
 
    
checklessthan10:
    sub al, 30h     
    mov ah, 00h
    mov bl, 10h
    div bl 
    cmp al, 0
    je resultTrue   
    jmp resultFalse
    
    
exit: 
    ret
    
    