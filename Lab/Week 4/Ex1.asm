start:
mov ah, 1
int 21h
cmp al, 30h
jl start
cmp al, 37h
jg start 
and al, 0Fh
mov cl, al
mov ch, 00000001b
shl ch, cl ; shift left n time
mov al, ch
mov bl, 100
mov ah, 0
div bl 
mov ch, ah ; phan du 
mov dl, al
add dl, 30h
mov ah, 2
int 21h
mov al, ch
mov ah, 0 
mov bl, 10
div bl 
mov ch, ah ; phan du
mov dl, al
add dl, 30h
mov ah, 2
int 21h
mov dl, ch
add dl, 30h
int 21h
jmp start