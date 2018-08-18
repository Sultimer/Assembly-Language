.model tiny;
.code;
.startup;

     mov ah,3dh
     mov al,01
     mov dx,offset fName
     int 21h
     push ax

     mov bx,ax
     mov cx,80
     mov dx,offset fBuffer
     mov ah,40h
     int 21h

     pop bx
     mov ah,3eh
     int 21h
          
.exit 0;

fName db 'c:\myinfo.txt',0h
fBuffer db 'Name:Sung Lientao',0dh,0ah,
'Number:201685030',0dh,0ah,
'Phone:15542386793',0dh,0ah,
'Email:1063539881@qq.com',0dh,0ah,'$'

end