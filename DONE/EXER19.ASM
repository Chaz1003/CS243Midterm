; Filename: EXER19.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 19 / 2024
; Description: This assembly language program will ask the user to input 3 characters. Then 
; display each character on its own line.
.MODEL small
.STACK 100h
.DATA
; Input variables
inputChar1 db ?
inputChar2 db ?
inputChar3 db ?
; Input prompts
InputPrompt1 DB 'Enter first character: $'
InputPrompt2 DB 'Enter second character: $'
InputPrompt3 DB 'Enter third character: $'
; Output messages
outputMsg1 DB 'The first character is $'
outputMsg2 DB 'The second character is $'
outputMsg3 DB 'The third character is $'
; Dot character
dot DB '.'
head1 DB 'FILENAME: EXER19.ASM$'
head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
head3 DB 'Description: This assembly language program will ask the user to input 3 characters. Then display each character on its own line.$'
head4 DB 'DATE: 09 / 19 / 2024$'

.CODE
start:
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
call NewLine
;----------------------------------------------------------------------------
; Input first character
mov dx, OFFSET InputPrompt1
mov ah, 09h
int 21h
; Read a character from the keyboard
mov ah, 01h
int 21h
mov inputChar1, al ; Store the character in inputChar1
;------------------------------------------------------------------------------
call NewLine
; Input second character
mov dx, OFFSET InputPrompt2
mov ah, 09h
int 21h
; Read a character from the keyboard
mov ah, 01h
int 21h
mov inputChar2, al
;------------------------------------------------------------------------------------
call NewLine
; Input third character
mov dx, OFFSET InputPrompt3
mov ah, 09h
int 21h
; Read a character from the keyboard
mov ah, 01h
int 21h
mov inputChar3, al
;--------------------------------------------------------------------
call NewLine
; Output the first character
mov dx, OFFSET outputMsg1
mov ah, 09h
int 21h
mov dl, inputChar1
mov ah, 02h
int 21h
call PrintDot
; New line
call NewLine
; Output the second character
mov dx, OFFSET outputMsg2
mov ah, 09h
int 21h
mov dl, inputChar2
mov ah, 02h
int 21h
call PrintDot
; New line
call NewLine
; Output the third character
mov dx, OFFSET outputMsg3
mov ah, 09h
int 21h
mov dl, inputChar3
mov ah, 02h
int 21h
call PrintDot
; New line
call NewLine
; Terminate program
mov ah, 4Ch
int 21h
; Subroutine to print a newline
NewLine:
mov dl, 0Dh ; Carriage return
mov ah, 02h
int 21h
mov dl, 0Ah ; Line feed
int 21h
ret
; Subroutine to print a dot (period)
PrintDot:
mov dl, '.'
mov ah, 02h
int 21h
ret
END start
