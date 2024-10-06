; Filename: EXER26.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 26 / 2024
; Description: This assembly language program will accept two integers. Compare the two
; integers. Display which one is smaller and bigger of the
; two integers.
.MODEL SMALL
.STACK 64
.DATA
MSG1 DB 13, 10, " Enter first number: ", "$"
MSG2 DB 13, 10, " Enter second number: ", "$"
MSGGreater DB 13, 10, " The first number is smaller", "$"
MSGEqual DB 13, 10, " Both numbers are equal", "$"
MSGSecondGreater DB 13, 10, " The second number is smaller", "$"
head1 DB 'FILENAME: EXER30.ASM$'
head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
head3 DB 'Description: Accepts 2 integers and identifies which is smaller$'
head4 DB 'DATE: 09 / 26 / 2026$'

.CODE
Main:
; Initialize data segment
mov ax, @data
mov ds, ax
; Print the headers
mov dx, OFFSET head1
mov ah, 09h
int 21h
call NewLine
mov dx, OFFSET head2
mov ah, 09h
int 21h
call NewLine
mov dx, OFFSET head3
mov ah, 09h
int 21h
call NewLine
mov dx, OFFSET head4
mov ah, 09h
int 21h
; Newline after header
call NewLine


;DISPLAY MESSAGE FOR FIRST NUMBER.
mov ah,09h
mov dx, offset MSG1
int 21h
;CAPTURE NUMBER AS STRING.
mov ah, 01h
int 21h
mov bh, al
;DISPLAY MESSAGE FOR SECOND NUMBER.
mov ah,09h
mov dx, offset MSG2
int 21h
;CAPTURE NUMBER AS STRING.
mov ah, 01h
int 21h
mov bl, al
;DISPLAY MESSAGE FOR RESULT.
;compare
and bx, 0F0Fh
cmp bh, bl
jc GREATER
jnc LESSER
jz Equal
Greater:
mov ah,09h
mov dx, offset MSGGreater
int 21h
jmp exit
LESSER:
mov ah,09h
mov dx, offset MSGSecondGreater
int 21h
jmp exit
Equal:
mov ah,09h
mov dx, offset MSGEqual
int 21h
jmp exit
exit:
mov ah,4Ch
int 21h
NewLine:
mov dl, 0Dh ; Carriage return
mov ah, 02h
int 21h
mov dl, 0Ah ; Line feed
int 21h
ret
END Main
