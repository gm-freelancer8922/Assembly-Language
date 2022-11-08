
org 100h

call s

ret 

var1 db 10                                                     
var2 db 4

sub_dsp1 db "Subtraction of: $"
sub_dsp2 db " and : $"
sub_ans db " Answer is: $"

s proc
    mov al, var1
    mov bl, var2
    
    sub al, bl
    aas
    
    mov bx, ax
    mov bl, 2
    mul bl
    aam
    mov bx, ax
    add bx, 3030h
    
    mov cx, bx
    
    mov dx, offset sub_dsp1
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
    
    mov dx, offset sub_dsp2
    mov ah, 9
    int 21h
    
    mov al, var2
    add al, 30h
    
    mov ah, 2
    mov dl, al 
    int 21h
    
    mov dx, offset sub_ans
    mov ah, 9
    int 21h
    
    mov ah, 2
    mov dl, ch
    int 21h
    
    mov ah, 2
    mov dl, cl
    int 21h
    
    ret         
s endp  



