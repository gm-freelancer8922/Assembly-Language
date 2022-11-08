
;direct memory access
org 100h

mov ax, 0xb800
mov ds, ax
mov di, 0
mov bp, 0
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


;letter convert

org 100h

mov ah, 1
int 21h

add al, 20h
mov dl, al
mov ah, 2
int 21h

ret            

;number compare


org 100h
    mov ah, 1
    int 21h
    
    mov bl, al
    
    mov ah, 1
    int 21h
    
    cmp al, bl
    je equal
    jb below
    jg greater
    
    equal:
        mov dx, offset eq
        mov ah, 9
        int 21h
        ret
    below:
        mov dx, offset b
        mov ah, 9
        int 21h
        ret
    greater:
        mov dx, offset g
        mov ah, 9
        int 21h
        
       
ret 

eq db " Numbers are Equal$"
b db " Second no. is Smaller$"
g db " Second no. is Greater$"



