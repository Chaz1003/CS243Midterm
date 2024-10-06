; Filename: EXER16.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 19 / 2024
; Description: This assembly language program will get character input
; and determine if input is 'y' or 'Y' to display good morning message
; else display good afternoon message.
.MODEL small
.STACK 100h
.DATA
TimePrompt DB 'Is it after 12 noon (Y/N)? $'
GoodMorningMessage LABEL BYTE
DB 13,10,'Good morning, world!',13,10,'$'
GoodAfternoonMessage LABEL BYTE
DB 13,10,'Good afternoon, world!',13,10,'$'
head1 DB 'FILENAME: EXER16.ASM$'
head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
head3 DB 'Description: This assembly language program will get character input and determine if input is ''y'' or ''Y'' to display good morning message else display good afternoon message.$'
head4 DB 'DATE: 09 / 19 / 2024$'
newline DB 0Dh,0Ah, '$' ; New line

.CODE
start:
; Initialize data segment
mov ax, @data
mov ds, ax
; Print the headers
mov dx, OFFSET head1
mov ah, 09h
int 21h
mov dx, OFFSET newline
mov ah, 09h
int 21h
mov dx, OFFSET head2
mov ah, 09h
int 21h
mov dx, OFFSET newline
mov ah, 09h
int 21h
mov dx, OFFSET head3
mov ah, 09h
int 21h
mov dx, OFFSET newline
mov ah, 09h
int 21h
mov dx, OFFSET head4
mov ah, 09h
int 21h
; Newline after header
mov dx, OFFSET newline
mov ah, 09h
int 21h

mov dx,OFFSET TimePrompt
mov ah,9
int 21h
mov ah,1
int 21h
cmp al,'y'
jz IsAfternoon
cmp al,'Y'
jnz IsMorning
IsAfternoon:
mov dx,OFFSET GoodAfternoonMessage
jmp DisplayGreeting
IsMorning:
mov dx,OFFSET GoodMorningMessage
DisplayGreeting:
mov ah,9
int 21h
mov ah,4ch
int 21h
END start 

