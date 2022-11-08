
org 100h

mov ax, 30d
AAM

mov bx, ax
add bx, 3030h

mov ah, 02
mov dl, bh
int 21h

mov ah, 02
mov dl, bl
int 21h

ret




