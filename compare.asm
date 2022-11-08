
org 100h
    mov ah, 1
    int 21h
    
    mov bl, al
    
    mov ah, 1
    int 21h
    
    cmp al, bl
    je equal
    jb below
    jg greater
    
    equal:
        mov dx, offset eq
        mov ah, 9
        int 21h
        ret
    below:
        mov dx, offset b
        mov ah, 9
        int 21h
        ret
    greater:
        mov dx, offset g
        mov ah, 9
        int 21h
        
       
ret 

eq db " Numbers are Equal$"
b db " Second no. is Smaller$"
g db " Second no. is Greater$"



