; input n alias A B, example n = 3 => A = 123 and B = 234; n = 4 => A = 9999 and B = 9999
include 'emu8086.inc'
org 100h 
start:
mov ah, 1
int 21h
sub al, 30h
cmp al, 1
je case1
cmp al, 2
je case2
cmp al, 3
je case3 
cmp al, 4
je case4
jmp turnback
case1:
    print ' ' 
    mov cx, 0000h
    mov ax, 0000h
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
    cmp ch, 0
    jle end      
    add ch, 30h           
    mov dl, ch
    mov ah, 2
    int 21h 
case2:  
    print ' '  
    mov ax, 0000h
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
    sub dh, dl   ; sub 2 num
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
case3: 
    print ' '
    mov ah, 1 
    int 21h   
    sub al, 30h 
    mov ah, 00h
    mov bl, 100
    mul bl
    mov cx, ax   
    mov ah, 1 
    int 21h   
    sub al, 30h
    mov ah, 00h
    mov bl, 10
    mul bl
    add cx, ax    
    mov ah, 1 
    int 21h 
    sub al, 30h
    mov ah, 00h
    add cx, ax    
    mov ah, 1 
    int 21h   
    sub al, 30h 
    mov ah, 00h
    mov bl, 100
    mul bl
    mov dx, ax    
    mov ah, 1 
    int 21h   
    sub al, 30h
    mov ah, 00h
    mov bl, 10
    mul bl
    add dx, ax   
    mov ah, 1 
    int 21h 
    sub al, 30h
    mov ah, 00h  
    add dx, ax      
    mov bx, cx  
    mov bx, cx
    add cx, dx  
    sub bx, dx
    mov dx, cx  ; add
    mov cx, bx  ; sub   
    jmp display

case4:  
    ; num a
    print ' '
    mov ah, 1
    int 21h
    sub al, 30h
    mov ah, 00h
    mov bx, 1000
    mul bx 
    mov cx, ax 
    mov ah, 1 
    int 21h   
    sub al, 30h 
    mov ah, 00h
    mov bl, 100
    mul bl
    add cx, ax   
    mov ah, 1 
    int 21h   
    sub al, 30h
    mov ah, 00h
    mov bl, 10
    mul bl
    add cx, ax
    mov ah, 1 
    int 21h 
    sub al, 30h
    mov ah, 00h
    add cx, ax  
    ; num b
    mov ah, 1
    int 21h
    sub al, 30h
    mov ah, 00h
    mov bx, 1000
    mul bx 
    mov dx, ax  
    mov ah, 1 
    int 21h   
    sub al, 30h 
    mov ah, 00h
    mov bl, 100
    mul bl
    add dx, ax   
    mov ah, 1 
    int 21h   
    sub al, 30h
    mov ah, 00h
    mov bl, 10
    mul bl
    add dx, ax    
    mov ah, 1 
    int 21h 
    sub al, 30h
    mov ah, 00h
    add dx, ax      
    mov bx, cx
    add cx, dx  
    sub bx, dx
    mov dx, cx  ; add
    mov cx, bx  ; sub  
    jmp display
display:
    print ' '
    mov ah, 0 
    mov ax, dx 
    mov bl, 100 
    div bl
    mov dx, ax
    mov ah, 0 
    mov al, dl 
    mov bl, 10 
    div bl 
    mov bh, ah 
    add bh, 30h 
    mov ah, 0
    div bl 
    mov bl, ah 
    add bl, 30h 
    add al, 30h 
    mov ah, 2
    mov dl, al 
    int 21h   
    mov dl, bl 
    int 21h 
    mov dl, bh 
    int 21h 
    mov ah, 0 
    mov al, dh 
    mov bl, 10 
    div bl 
    add ah, 30h 
    add al, 30h 
    mov bx, ax 
    mov ah, 2
    mov dl, bl 
    int 21h  
    mov dl, bh
    int 21h         
    cmp bx, 0000h
    jle end 
    print ' '
    mov ah, 0 
    mov ax, cx 
    mov bl, 100 
    div bl
    mov cx, ax
    mov ah, 0 
    mov al, cl 
    mov bl, 10 
    div bl 
    mov bh, ah 
    add bh, 30h 
    mov ah, 0
    div bl 
    mov bl, ah 
    add bl, 30h 
    add al, 30h 
    mov ah, 2
    mov dl, al 
    int 21h   
    mov dl, bl 
    int 21h 
    mov dl, bh 
    int 21h 
    mov ah, 0 
    mov al, ch 
    mov bl, 10 
    div bl 
    add ah, 30h 
    add al, 30h 
    mov bx, ax 
    mov ah, 2
    mov dl, bl 
    int 21h  
    mov dl, bh
    int 21h       
turnback: 
    jmp start
end: 
    ret    

    
    
     
    
   
    
  




