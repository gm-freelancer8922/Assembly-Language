
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
   
   org 100h
	mov al, 2
	mov dx, offset filename
	mov ah, 3dh
	int 21h
	jc err
	mov handle, ax
	jmp k
	filename db "B:\LQ01.txt", 0
	handle dw ?
	err:
	; .... 
	k:
	ret




