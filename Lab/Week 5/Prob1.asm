start:
mov ah, 1
int 21h
sub al, 30h
mov bl, 10    
mov ah, 0
mul bl
mov ch, al
mov ah, 1
int 21h
sub al, 30h
add ch, al ; so a    
cmp ch, 8
jl inputData ; check a > 8
cmp ch, 16
jg inputData ; check a < 16
mov dh, 1
mov bx, 0b     
inputBit:
    mov ah, 1
    int 21h
    sub al, 30h
    cmp al, 1
    je add1 
    cmp al, 0
    je add0 
add1:    
    inc dh
    add bx, 00000001b
    shl bx, 1 
    cmp dh, ch
    jg valdating
    jmp inputBit
add0:    
    inc dh
    add bx, 00000000b
    shl bx, 1
    cmp dh, ch
    jg valdating   
    jmp inputBit 
valdating:  
    shr bx, 1 
    jmp decimal   
decimal:  
    mov ax, bx
    mov cl, 10
    div cl 
    mov ch, ah
    mov dl, al
    add dl, 30h
    mov ah, 2
    int 21h    
    mov dl, ch
    add dl, 30h
    int 21h   
    ret
inputData:
    mov ah, 2
    mov dl, "F"
    int 21h
    mov cx, 0
    jmp start
    