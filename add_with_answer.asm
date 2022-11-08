
org 100h

call a_dd
ret 

var1 db 10
                                                      
var2 db 4  

sum_dsp1 db "Sum of : $"
sum_dsp2 db " and : $"
sum_ans db " Answer is: $"


;subtraction function

a_dd proc
    mov al, var1
    mov bl, var2
    
    add al, bl
    aaa
    
    mov bx, ax
    add bx, 3030h
    
    mov cx, bx
    
    mov dx, offset sum_dsp1
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
    
    mov dx, offset sum_dsp2
    mov ah, 9
    int 21h
    
    mov al, var2
    add al, 30h
    
    mov ah, 2
    mov dl, al 
    int 21h
    
    mov dx, offset sum_ans
    mov ah, 9
    int 21h
    
    mov ah, 2
    mov dl, ch
    int 21h
    
    mov ah, 2
    mov dl, cl
    int 21h
    
    ret
 
a_dd endp   



