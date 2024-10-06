; Filename: EXER17.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 19 / 2024
; Description: This assembly language program will get string input and
; display back string.
.MODEL small
.STACK 100h
.DATA
MAXIMUM_STRING_LENGTH EQU 1000
StringInput DB MAXIMUM_STRING_LENGTH DUP (?)
InputPrompt DB 'Enter text: $'
head1 DB 'FILENAME: EXER17.ASM$'
head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
head3 DB 'Description: This assembly language program will get string input and display back string.$'
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

mov dx,OFFSET InputPrompt
mov ah,9
int 21h
mov ah,3fh ; DOS read from handle function
mov bx,0 ; standard input handle
mov cx,MAXIMUM_STRING_LENGTH ; read up to maximum number of characters
mov dx,OFFSET StringInput ; store the string here
int 21h ; get the string
and ax,ax ; were any character read?
jz Done ; no, so you're done
mov cx,ax ; put string length in CX where
; you can use it as a counter
push cx ; save the string length
mov bx,OFFSET StringInput
pop cx ; get back the string length
mov ah,40h ; DOS write form handle function
mov bx,1 ; standard output handle
mov dx,OFFSET StringInput ; prepare to print the string
int 21h ; print the string
Done:
mov ah,4ch ; DOS terminate program function
int 21h ; terminate the program
END start
