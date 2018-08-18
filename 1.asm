.model tiny
.code
.startup
	mov dx,offset string
	mov ah,9
	int 21h
.exit 0

string db 'Name:Sung Lientao',0dh,0ah,
'Number:201685030',0dh,0ah,
'Phone:15542386793',0dh,0ah,
'Email:1063539881@qq.com',0dh,0ah,'$'
end