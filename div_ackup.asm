
org 100h

call di_v 

ret 

var1 db 10
                                                      
var2 db 4  

div_dsp1 db "Division of: $"
div_dsp2 db " and : $"
div_ans db " Answer is: $"

di_v proc
    
    mov bl, var1
    mov al, var2
    aad
    
    div bl
    
    mov bl, ah
    add bx, 3030h
    
    mov cx, bx
    
    mov dx, offset div_dsp1
    mov ah, 9
    int 21h
    
    mov al, var1
    
    aam
    mov bx, ax
    add bx, 3030h
    
    
    mov ah, 2
    mov dl, bh 
    int 21h
    
    mov ah, 2
    mov dl, bl 
    int 21h
    
    mov dx, offset div_dsp2
    mov ah, 9
    int 21h
    
    mov al, var2
    
    add al, 30h
    mov ah, 2
    mov dl, al 
    int 21h
    
    mov dx, offset div_ans
    mov ah, 9
    int 21h
    
    mov ah, 2
    mov dl, cl 
    int 21h
    
    
    
     
    
    
    ret
    
di_v endp