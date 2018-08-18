.model tiny
.code
.startup

mov ah, 3dh
mov dx, offset fName
mov al, 1
int 21h
push ax
mov bx, ax

lea si, fString
mov dx, si
mov ah, 0ah
int 21h

mov ah, 40h
mov cx, 18
mov dx, si
add dx, 2h
int 21h

pop bx
mov ah,3eh
int 21h

.exit 0

fName db 'c:\data.txt',0h
fString db '2018'
end