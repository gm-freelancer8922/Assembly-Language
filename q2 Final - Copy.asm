
org 100h

call a_dd
mov dl, 10
mov ah, 02h
int 21h

mov dl, 13
mov ah, 02h
int 21h

call m_ul

mov dl, 10
mov ah, 02h
int 21h

mov dl, 13
mov ah, 02h
int 21h
 
call s_ub

mov dl, 10
mov ah, 02h
int 21h

mov dl, 13
mov ah, 02h
int 21h

call d_iv
mov dl, 10
mov ah, 02h
int 21h

mov dl, 13
mov ah, 02h
int 21h

mov dl, 10
mov ah, 02h
int 21h

mov dl, 13
mov ah, 02h
int 21h

mov dx, offset query
mov ah, 9
int 21h

ret 

var1 db 10                                                     
var2 db 4

query db "The answer of subtraction and multiplication in multiplied by 2 and then the answer is displayed.$"
div_dsp1 db "Division of: $"
div_dsp2 db " and : $"
div_ans db " Answer is: $"

;subtraction function

sum_dsp1 db "Sum of : $"
sum_dsp2 db " and : $"
sum_ans db " Answer is: $"

mul_dsp1 db "Multiplication of: $"
mul_dsp2 db " and : $"
mul_ans db " Answer is: $"

sub_dsp1 db "Subtraction of: $"
sub_dsp2 db " and : $"
sub_ans db " Answer is: $"

s_ub proc
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
s_ub endp

;multiplication fuunction
m_ul proc
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
m_ul endp


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


d_iv proc
    
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
    
d_iv endp   



