; Filename: EXER14.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 19 / 2024
; Description: This assembly language program will get character input and 
; display back character input.
.MODEL small
.STACK 200h
.DATA
inputChar db ? ; variable to store the input character
intputMsg db 'Enter a character: $'
outputMsg db ' You entered: $'
head1 DB 'FILENAME: EXER14.ASM$'
head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
head3 DB 'Description: This assembly language program will get character input and display back character input.$'
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

; display the input prompt message
mov dx,OFFSET intputMsg
mov ah,09h
int 21h
; read a character from the keyboard
mov ah,01h
int 21h
mov inputChar,al ; store the charcter in inputChar
; display the outout message 
mov dx,OFFSET outputMsg
mov ah,09h
int 21h

;display the charActer back
mov dl, inputChar
mov ah,02h
int 21h
; exit program
mov ax,4c00h
int 21h
END start
