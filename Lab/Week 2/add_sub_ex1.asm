mov ah, 1
int 21h      
sub al, 30h
mov ch, al

mov ah, 1
int 21h  
sub al, 30h
add cl, al  

mov bh, ch
mov bl, cl

add bh,bl
sub ch,cl
            
add bh, 30h            
mov dl, bh
mov ah, 2
int 21h
           
add ch, 30h           
mov dl, ch
mov ah, 2
int 21h 

ret