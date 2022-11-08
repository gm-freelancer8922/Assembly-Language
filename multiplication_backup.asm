
org 100h

call m

mov dl, 10
mov ah, 02h
int 21h

mov dl, 13
mov ah, 02h
int 21h
 
call s 

ret 

var1 db 10
                                                      
var2 db 4  

mul_dsp db "Multiplication Result is $"

sub_dsp db "Subtraction Result is $"

;subtraction function
s proc
    mov al, var1
    mov bl, var2
    
    sub al, bl
    aas
    
    mov bx, ax
    add bx, 3030h
    
    mov dx, offset sub_dsp
    mov ah, 9
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    ret         
s endp

;multiplication fuunction
m proc
    mov al, var1
    mov bl, var2
    
    mul bl
    aam
    
    mov bx, ax
    add bx, 3030h ;3030h is ascii character 0
    
    mov dx, offset mul_dsp
    mov ah, 9
    int 21h
    
    mov ah, 2
    mov dl, bh
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    ret
m endp



