.model small
.stack 100h
.data
	var1 db "Enter a character:$"
	var2 db 10,13,"Character is:$"
.code
	main proc
		mov ax,@data
		mov ds,ax
		
		mov dx,offset var1
		mov ah,09h
		int 21h
		
		mov ah,01h
		int 21h
		
		mov bl,al
		
		mov dx,offset var2
		mov ah,09h
		int 21h
		
		mov dl,bl
		
		mov ah,02h
		int 21h
	
	mov ah,4ch
	int 21h
	main endp

end main