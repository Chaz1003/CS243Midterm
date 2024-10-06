; Filename: EXER12.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 19 / 2024
; Description: This assembly language program will display multiple string variables on 
; a single line.
.MODEL small
.STACK 200h
.DATA
String1 DB 'Line1$'
String2 DB 'Line2$'
String3 DB 'Line3$'
; carriage return (ASCII code 0Dh) positions the cursor to the left side of the current line 
; of characters
; line feed (ASCII code 0Ah) moves the cursor down one line on the output device.
head1 DB 'FILENAME: EXER12.ASM$'
head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
head3 DB 'Description: This assembly language program will display multiple string variables on a single line.$'
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

mov ah,9
mov dx,OFFSET String1
int 21h
mov dx,OFFSET String2
int 21h
mov dx,OFFSET String3
int 21h
mov ah,4ch
int 21h
END start
