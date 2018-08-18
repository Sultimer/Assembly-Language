.model tiny;
.code;
.startup;

	;´ò¿ªÎÄ¼þ
    mov ah, 3dh
    mov al, 01
    mov dx, offset fName
    int 21h
    push ax
    mov bx, ax

	;µÃµ½ÎÄ¼þ´óÐ¡
	mov al, 2
    mov dx, 0h
    mov cx, 0h
    mov ah, 42h
	int 21h
	and di, 0
	mov di, ax

	;×ª»»³ÉÊ®½øÖÆ
    mov dx, -1
    push dx
    mov cx, 10
	lea si, fBuffer+9

div10:
    xor dx, dx
    div cx
    push dx
    test ax, ax
    jne div10
    mov cx, -1

sav:
    pop dx
    cmp dx, cx
    je return
    add dl, '0'
	mov [si], dl
	inc si
	jmp sav

return:

	mov [si],0dh
	inc si
	mov [si],0ah
	inc si


	;¹Ø±ÕÎÄ¼þ
    pop bx
    mov ah,3eh
    int 21h


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;´ò¿ªÎÄ¼þ
        mov ah, 3dh
        mov al, 00
        mov dx, offset fName
        int 21h
        push ax
        mov bx, ax
	
	;¶ÁÎÄ¼þ
	mov cx,di
        mov dx,si
        mov ah,3fh
        int 21h 

	;¹Ø±ÕÎÄ¼þ
        pop bx
        mov ah,3eh
        int 21h


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;´ò¿ªÎÄ¼þ
        mov ah, 3dh
        mov al, 01
        mov dx, offset fName
        int 21h
        push ax
        mov bx, ax

	;ÎÄ¼þÖ¸Õëµ½Í·
	mov ah,42h
     	mov cx,0
     	mov dx,0
     	mov al,00
     	int 21h

	add di,13

        ;Ð´ÈëÐÅÏ¢
	mov dx,offset fBuffer
	mov cx,di
	mov ah,40h
        int 21h


	;¹Ø±ÕÎÄ¼þ
        pop bx
        mov ah,3eh
        int 21h



.exit 0
fName db 'c:\myinfo.txt',0h
fBuffer db 'filesize:'
end;