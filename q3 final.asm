
org 100h
    mov ah, 3
    mov al, 6
    cmp ah,al
    jg label:
    
        label: 
            mov ah, 2 
            mov dl, al
            add dl, 30h
            int 21h
    mov dx, offset msg
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    
    cmp al, 79h
    je label
    
    cmp al, 65h
    je exit

exit:
ret

msg db 10, 13, "Press Y to run the program again or E to exit from it.$"                


