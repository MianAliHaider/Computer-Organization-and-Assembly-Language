.model small
.stack 100h
.386
.data
	var1 db "Enter a character:$"
	var2 db 10,13,"The ASCII  code of $"
	var3 db " in hex is: $"

.code
	main proc
		mov ax,@data
		mov ds,ax
	
	input:	lea dx,var1
		mov ah,09h
		int 21h
		
		mov ah,01h
		int 21h
		
		cmp al,13
		je exit
		
	
	again:	lea dx,var2
		mov	ah,09h
		int 21h
	
		mov dl,al
		mov ah,02h
		int 21h
		
		lea dx,var3
		mov	ah,09h
		int 21h
	
		mov bl,al
		
		mov cx,2
		
	aa: rol bl,4
		mov dl,bl
		and dl,0fh
		cmp dl,9
		ja letter 
		add dl,30h
		jmp bb
	letter: add dl,37h
	bb: mov ah,02h
		int 21h
		dec cx
		jnz aa
		
		mov dl,10
		mov ah,02
		int 21h
		
		mov dl,13
		mov ah,02
		int 21h
		jmp input
		
	exit:mov ah,4ch
		int 21h
		
	main endp
end main	
	