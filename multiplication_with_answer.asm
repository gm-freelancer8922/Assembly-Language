org 100h

call m
 
ret 

var1 db 10
                                                      
var2 db 4  

mul_dsp1 db "Multiplication of: $"
mul_dsp2 db " and : $"
mul_ans db " Answer is: $"

;multiplication fuunction
m proc
    mov al, var1
    mov bl, var2
    
    mul bl
    
    mov bx, ax
    mov bl, 2
    mul bl
    aam
    mov bx, ax
    add bx, 3030h
    
    mov cx, bx
    
    mov dx, offset mul_dsp1
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
    
    mov dx, offset mul_dsp2
    mov ah, 9
    int 21h
    
    mov al, var2
    
    add al, 30h
    mov ah, 2
    mov dl, al 
    int 21h
    
    mov dx, offset mul_ans
    mov ah, 9
    int 21h
    
    mov ah, 2
    mov dl, ch
    int 21h
    
    mov ah, 2
    mov dl, cl
    int 21h
    
    ret
m endp   



