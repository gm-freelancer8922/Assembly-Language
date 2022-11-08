org 100h
    mov ax, n
    mov cx, 0
    mov dx, 0
        label1:
            cmp ax, 0
            je print
            
            mov bx, 10
            div bx
            push dx
            
            inc cx
            
            xor dx, dx
            jmp label1
        print:
            cmp cx, 0
            je exit
            pop dx
            add dx, 48  
            
            mov ah, 2
            int 21h
            
            dec cx
            jmp print
            
            exit:
                ret

n dw 655