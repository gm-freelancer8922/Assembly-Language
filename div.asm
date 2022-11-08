
org 100h

call di_v 

ret 

var1 db 10
                                                      
var2 db 4  

div_dsp1 db "Division of: $"
div_dsp2 db " and : $"

di_v proc
    
    ;mov bl, var1
    ;mov al, var2
    ;aad
    
    ;div bl
    
    ;mov bl, ah
    ;add bx, 3030h
    ;
    ;mov cx, bx
    
    mov al, var1
    
    mov bx, ax
    add bx, 3030h
    
    
    mov ah, 2
    mov dl, bh 
    int 21h
    
    mov ah, 2
    mov dl, bl 
    int 21h
    
    
    
     
    
    
    ret
    
di_v endp