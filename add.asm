
org 100h

call a_dd

ret 

var1 db 10
                                                      
var2 db 4

;subtraction function

a_dd proc
    mov al, var1
    mov bl, var2
    
    add al, bl
    aaa
    
    mov bx, ax
    add bx, 3030h
    
    
    mov ah, 2
    mov dl, bh 
    int 21h
    
    mov ah, 2
    mov dl, bl 
    int 21h
 
a_dd endp

ret




