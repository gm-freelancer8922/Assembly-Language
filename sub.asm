
org 100h
 
call s 

ret 

var1 db 10
                                                      
var2 db 4  

mul_dsp db "Subtraction Result is $"

;subtraction function
s proc
    mov al, var1
    mov bl, var2
    
    sub al, bl
    aas
    
    mov bx, ax
    add bx, 3030h
    
    mov ah, 2
    mov dl, bl
    int 21h         
s endp



