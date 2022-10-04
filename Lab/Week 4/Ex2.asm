nhap: mov ah,1
int 21h
mov cl,al
kiemtra: cmp al,30h
jle sai
cmp al,37h
jg sai
jmp dung
sai: mov ah,2
mov dl,46h
int 21h
jmp nhap
dung: mov ah,2
mov dl,54h
int 21h
mov bl,1b 
and cl,0Fh
shl bl,cl 
mov ch,9h 
xuat: mov cl,10d 
mov ax,bx
div cl   
mov dh,ah 
add dh,30h
mov ah,0h
div cl
mov bh,ah
add bh,30h
add al,30h
mov ah,2
mov dl,al
int 21h
mov dl,bh
int 21h
mov dl,dh
int 21h
xuat1: dec ch       
cmp ch,0h
je endgame
mov cl,80h
and cl,bl
cmp cl,0
je in0
jmp in1
in0:mov ah,2
mov dl,30h
int 21h
shl bl,1
jmp xuat1
in1:mov ah,2
mov dl,31h
int 21h   
shl bl,1
jmp xuat1  
endgame: