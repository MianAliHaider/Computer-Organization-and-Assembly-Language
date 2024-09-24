.model small
.stack 100h
.data
	var1 db "Enter a charcter:$"
	var2 db 10,13,"Its  toggle is:$" 
.code
	main proc
		mov ax,@data
		mov ds,ax
		
		mov dx,offset var1
		mov ah,09h
		int 21h
		
		mov ah,01h
		int 21h	
		
		mov dx,offset var2
		mov ah,09h
		int 21h
		
		xor al,20h
		
		mov dl,al
		
		mov ah,02h
		int 21h
		
	mov ah,4ch
	int 21h
	main endp

end main