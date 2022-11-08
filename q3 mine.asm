
org 100h
mov ax, 0xb800
mov ds, ax
mov ch, 0x0f
input:
    mov cl, b[bp]
    add cl, 20h
    mov [di], cx
    add di, 2
    add bp, 1
    cmp di, 24
    jbe input   
    ret
b db 47h, 48h, 55h, 4ch, 41h, 4dh, 4dh, 55h, 53h, 54h, 41h, 46h, 41h




