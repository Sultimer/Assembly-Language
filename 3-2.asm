.model tiny
.stack
.data
point1 db 19h,03h; ;�������
point2 db 10h,06h;
point3 db 10h,0ch;
point4 db 22h,06h;
point5 db 22h,12h;
point db ?,?;
ratio1 db 01h; ;ֱ��б��
ratio2 db 03h; ;ֱ��б��
ratio3 db 02h; ;���߱���
.code
.startup
MOV AX,0003H
INT 10H
mov dl,point1[0]; point1��point3��ֱ��
mov dh,point1[1];
line1: cmp dl,point3[0];
jb line_2;
call show;
dec dl;
add dh,ratio1;
jmp line1;
line_2: mov dl,point1[0]; point1��point4��ֱ��
mov dh,point1[1];
line2: cmp dl,point4[0];
jnbe line_3;
call show;
inc dl;
add dh,ratio1;
jmp line2;
line_3: mov dl,point2[0]; point2��point5��ֱ��
mov dh,point2[1];
line3: cmp dl,point5[0];
jnbe line_4;
call show;
add dl,ratio3;
jmp line3;
line_4: mov dl,point2[0]; point2��point4��ֱ��
mov dh,point2[1];
line4: cmp dl,point4[0];
jnbe line_5;
call show;
inc dh;
add dl,ratio2;
jmp line4;
line_5: mov dl,point3[0];
mov dh,point3[1];
line5: cmp dl,point5[0];
jnbe done;
call show;
dec dh;
add dl,ratio2;
jmp line5;
show proc ;��ʾ*
push dx;
mov al,2ah;
mov ah,02h;
int 10h;
mov ah,02h;
mov dl,al;
int 21h;
pop dx;
ret;
show endp;
done: mov al,02h;
mov dl,16h;
mov dh,0dh;
int 10h;
.exit 0;
end