start:
mov ah, 1
int 21h
sub al, 30h
mov bl, 100
mov ah, 0 
mul bl 
mov cx, ax ; a 1xx
mov ah, 1
int 21h
sub al, 30h
mov bl, 10
mov ah, 0 
mul bl 
add cx, ax ; a x1x
mov ah, 1
int 21h
sub al, 30h
mov ah, 0
add cx, ax ; a xx1
cmp cx, 99 ; check a > 99
jl inputData
cmp cx, 999 ; check a < 999
jge inputData
mov bl, 2
mov al, cl
div bl 
cmp ah, 0 ; check odd A
je inputData
mov ah, 1
int 21h
sub al, 30h
mov bl, 100
mov ah, 0 
mul bl 
mov dx, ax ; b 1xx
mov ah, 1
int 21h
sub al, 30h
mov bl, 10
mov ah, 0 
mul bl 
add dx, ax ; b x1x
mov ah, 1
int 21h
sub al, 30h
mov ah, 0 
add dx, ax ; b xx1  
cmp dx, 99 ; check b > 99
jl inputData
cmp dx, 999 ; check b < 999
jge inputData ; a store in CX register, b store in DX register    
cmp cx, dx ; so sanh tim max  
jl printB
jg printA
ret
printB: 
    mov ax, dx
    mov bl, 100
    div bl 
    mov dh, ah ; luu phan du cua phep chia 1xx/100
    mov bh, al ; phan nguyen phep chia 1xx/100 => luu bien tim MAX
    mov dl, al 
    add dl, 30h
    mov ah, 2
    int 21h
    mov al, dh  
    mov ah, 0  
    mov bl, 10
    div bl    
    mov dh, ah ; luu phan du cua phep chia 1x/10
    add bh, al ; cong hang chuc
    mov dl, al
    add dl, 30h
    mov ah, 2 
    int 21h
    mov dl, dh
    add bh, dh ; cong don vi
    add dl, 30h
    int 21h  
    mov al, bh
    mov ah, 0 
    mov bl, 10
    div bl
    mov ch, ah ; luu du cua phep max
    mov dl, al
    add dl, 30h
    mov ah, 2
    int 21h
    mov dl, ch 
    add dl, 30h
    int 21h  
    ret    
printA: 
    mov ax, cx
    mov bl, 100
    div bl 
    mov dh, ah ; luu phan du cua phep chia 1xx/100
    mov bh, al ; luu phan du de tim phep cong max
    mov dl, al 
    add dl, 30h
    mov ah, 2
    int 21h 
    mov al, dh  
    mov ah, 0  
    mov bl, 10
    div bl    
    mov dh, ah ; luu phan du cua phep chia 1x/10
    add bh, al ; cong hang chuc
    mov dl, al
    add dl, 30h
    mov ah, 2 
    int 21h     
    mov dl, dh
    add bh, dh ; cong don vi
    add dl, 30h
    int 21h   
    mov al, bh
    mov ah, 0 
    mov bl, 10
    div bl
    mov ch, ah ; luu du cua phep max
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





