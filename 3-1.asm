.model tiny
.code
.startup

    mov ax,3h
    int 10h
    
	mov ah,13h
	mov al,0

	mov bl,10
	mov cx,17
	mov dh,3
	mov dl,3
	mov bp, offset string1	
	int 10h
	
	mov bl,13
	mov cx,16
	mov dh,4
	mov dl,3
	mov bp,offset string2
	int 10h 

	mov bl,9
	mov cx,17
	mov dh,5
	mov dl,3
	mov bp,offset string3
	int 10h 
	
	mov bl,15
	mov cx,23
	mov dh,6
	mov dl,3
	mov bp,offset string4
	int 10h

.exit 0
string1 db 'NameZhang Shiqi',0dh,0ah,'$'
string2 db 'Number201685085',0dh,0ah,'$'
string3 db 'PhoneIts private',0dh,0ah,'$'
string4 db 'Email278367870@qq.com',0dh,0ah,'$'
end