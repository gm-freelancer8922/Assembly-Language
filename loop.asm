
org 100h

mov al, key

loop1:
    mov cl, start
    cmp cl, end
    cmp dl, al
    ja label:
    
    mov dl, [start]
    add dl, [end]
    sar dl, 1
    mov bl, dl
    
    cmp al, [data+bx]
    je store
    jb step2
    ja step1
    
    step1:
        add dl, 1
        mov [start], dl
        jmp loop1
    
    step2:
        sub dl, 1
        mov [end], dl
        jmp loop1
    
    store:
        mov dx, offset msg0
        mov ah, 9
        int 21h
        
        mov cx, w.[key]
        add cx, 30h
        mov ah, 02
        mov dl, cl
        int 21h
        
        mov dx, offset msg1
        mov ah, 9
        int 21h
        
        mov cx, bx
        add cx, 30h
        mov ah, 02
        mov dl, cl
        int 21h
     
     above:
        mov ax, 0x4c00
        int 21h

label:
    ret 
    
    data db 0,1,2,3,4,5,6,7,8,9
    start db 0
    end db 10
    key db 8
    msg0 db "Key $"
    msg1 db " Value is at $"




