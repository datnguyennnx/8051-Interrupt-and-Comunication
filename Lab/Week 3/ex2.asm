; Compare less than 5 print 4T456789, greater equal to 5 print 5T543210

include 'emu8086.inc'
org 100h

mov ah, 1
int 21h   
jmp checklessthan10


resultTrue:
    mov cl, ah
    print "T"
    mov dl, cl 
    add dl, 30h
    mov ah, 2
    int 21h 
    mov al, cl   
    
    
    cmp cl, 5h
    JL increment
    JGE decrement
    
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
    mov bl, 10
    div bl 
    cmp al, 0
    
    je resultTrue 
    jmp resultFalse

increment:
    inc al
    mov dl, al 
    add dl, 30h
    mov ah, 2
    int 21h      
    mov ah, 00h    
    sub al, 30h
    cmp al, 9
    jl increment   
    jmp exit
    

decrement:
    dec al
    mov dl, al 
    add dl, 30h
    mov ah, 2
    int 21h     
    mov ah, 00h 
    sub al, 30h
    cmp al, 0
    jg decrement
    jmp exit  

    
exit: 
    ret
    
    