
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 2
mov dx, offset filename
mov ah, 3dh
int 21h
mov handler, ax

mov bx, handler
mov dx, offset LQV1
mov cx, 10
mov ah, 3fh
int 21h

mov al, 3
mov ah, 0
int 10h

mov al, 7
mov ah, 5
int 10h

mov ax, LQV1
mov bx, ax
mov dl, bl
mov ah, 02h
int 21h

mov dl, bh
mov ah, 02h
int 21h 

mov dx, offset cfilename
mov cx, 0
mov ah, 3ch
int 21h
mov handler, ax
mov ax, LQV1
sub ax, 3030h
mov al, ah
xor ah, ah
mov cl, 2
div cl

cmp ah, 0
je prime
jg odd

prime:
    mov dx, offset primer
    mov ah, 09h
    int 21h
    mov bx, handler
    mov cx, 26
    mov ah, 40h
    int 21h
    
    mov dx, offset LQV1
    mov bx, handler
    mov cx, 2
    mov ah, 40h
    int 21h
    jmp exit
    
odd:
    mov dx, offset odder
    mov ah, 09
    int 21h
    
    mov bx, handler
    mov cx, 26
    mov ah, 40h
    int 21h
    
    mov dx, offset LQV1
    mov bx, handler
    mov cx, 2
    mov ah, 40h
    int 21h
    
    jmp exit
    

exit:
ret  

LQV1 dw 10 dup('')

filename db "B:\LQ01.txt", 0
handler dw ?
primer db "Even $"
odder db "Odder $"
cfilename db "B:\myfile.txt",0




