mov ah, 1
int 21h
mov bh, al

mov ah, 1
int 21h 
mov bl, al

sub bx, 3030h

add bl, bh    
mov ah, 00h
mov al, bl 
mov bl, 10
div bl
mov bl, al
mov bh, ah


add bx, 3030h

mov dl, bl
mov ah, 2
int 21h

mov dl, bh
int 21h

ret