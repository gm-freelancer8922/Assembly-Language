org 100h
    
    mov cx, 0
    input:
        mov ah, 1
        int 21h
        mov bl, al
        push bx
        inc cx
        mov dl, 0dh
        cmp al, dl
        je exit
        
    jmp input 
    
exit:
    mov ah, 2
    mov dl, 0ah
    int 21h
    mov ah, 2
    mov dl, 0dh
    int 21h 
    
    outt:
        pop bx
        mov dl, bl
        int 21h
    loop outt
ret
