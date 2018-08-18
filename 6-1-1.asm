.model tiny;
.code;
.startup;

mov dx, offset fName
mov cx, 0
mov ah, 3ch
int 21h
.exit 0

fName db 'c:\myinfo.txt',0h
end