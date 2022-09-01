mov ah,1 
int 21h                    
sub al, 30h   
mov ah, 00h
mov bl, 10
mul bl
mov ch, al

mov ah,1 
int 21h
sub al, 30h
add ch, al   ; num 1 store ch  

mov ah,1 
int 21h                    
sub al, 30h   
mov ah, 00h
mov bl, 10
mul bl
mov cl, al

mov ah,1 
int 21h
sub al, 30h
add cl, al   ; num 2 store cl  


mov dh, ch
mov dl, cl
                                
add ch,cl    ; add 2 num
sub dh, dl

mov ax, 0000h
mov al, ch
mov bl, 10
div bl   

mov cl, ah
mov ch, al   
          
add ch, 30h
mov dl, ch
mov ah, 2
int 21h

add cl, 30h
mov dl, cl
mov ah, 2
int 21h  ; result 1  

mov ax, 0000h
mov al, dh
mov bl, 10
div bl   

mov cl, ah
mov ch, al   
          
add ch, 30h
mov dl, ch
mov ah, 2
int 21h

add cl, 30h
mov dl, cl
mov ah, 2
int 21h   ; result 2

ret






