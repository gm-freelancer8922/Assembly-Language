
org 100h
        
 
MOV AL, 15 ; AL = 0Fh
AAM ; AH = 01, AL = 05 

mov bx, ax
mov ah, 02
mov dl, bh
add dl, 30h
int 21h

mov ah, 02
mov dl, bl
add dl, 30h
int 21h

RET