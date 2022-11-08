org 100h
    mov al, 03h
    mov ah, 0
	int 10h
	
	mov ah, 05h
	mov al, 5
	int 10h
	
	
	mov dx, offset msg
	mov ah, 9
	int 21h
ret 

msg db "FA18-BCS-092 $"