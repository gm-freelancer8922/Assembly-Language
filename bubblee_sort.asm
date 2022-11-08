org 100h
    
    mov cx, 5
    dec cx
    again:
        mov bx, cx
        mov si, 0
        cmp_num:
            mov al, a[si]
            mov dl, a[si+1]
            cmp al, dl
            jc noswap
            mov a[si], dl
            mov a[si+1], al
        noswap:
            inc si
            dec bx
            jnz cmp_num
            loop again
    
    
    
ret

    a db 3, 2, 4, 1, 5