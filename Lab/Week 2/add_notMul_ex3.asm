mov ah, 1
int 21h
mov bh, al
mov ah, 1
int 21h 
mov bl, al

sub bx, 3030h ;num 1

mov ah, 1
int 21h
mov ch, al
mov ah, 1
int 21h 
mov cl, al    

sub cx, 3030h  ;num 2

add bh, ch ;add chuc
mov dl, bh
add bl, cl ;add don vi
mov dh, bl

add dl, 30h
mov ah, 2 
int 21h

add dh, 30h
mov dl, dh
int 21h



ret