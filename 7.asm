.model tiny
.code
.startup

lea si, fString
mov dx, si
mov ah, 0ah
int 21h

mov bl, fString[1]
xor bh, bh
add si, bx
mov [si+2], 24h

lea si, fString
mov cx, bx
again:
	xor [si+2], 11001010B
	inc si
loop again

add dx, 2
mov [si+2], 0dh
mov [si+3], 0ah
mov [si+4], 24h
mov ah, 9
int 21h

lea si, fString
mov cx, bx
again2:
	xor [si+2], 11001010B
	inc si
loop again2

mov ah,9
int 21h

.exit 0
fString db '2020'
end