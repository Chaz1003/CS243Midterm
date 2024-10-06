; Filename: EXER20.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 19 / 2024
; Description: This assembly language program will ask the user to input a character. 
; Determine if 
; character is letter A and display message “Yes, you have entered 
; letter A.” If not, display “No, you have not entered letter A. You 
; entered character _.”
.MODEL small
.STACK 100h
.DATA
Prompt DB 'Enter a character: $'
inputChar db ?
IsA DB 13,10,'Yes, you have entered letter A.',13,10,'$'
IsNotA DB 13,10,'No, you have not entered letter A. You entered character ', 0,'$'
head1 DB 'FILENAME: EXER20.ASM$'
head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
head3 DB 'Description: Identify if user has inputted ''A''$'
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

mov ax,@data
mov ds,ax
; Prompt for input
mov dx, OFFSET Prompt
mov ah, 09h
int 21h
; Read character input
mov ah, 01h
int 21h
mov inputChar, al
; Compare the input character to 'A'
cmp al, 'A'
jz IsLetterA
IsNotLetterA:
; Display the "Not A" message
mov dx, OFFSET IsNotA
mov ah, 09h
int 21h
; Display the input character
mov dl, inputChar
mov ah, 02h
int 21h
mov dl, 2Eh
mov ah, 02h
int 21h
jmp ExitProgram
IsLetterA:
; Display the "Is A" message
mov dx, OFFSET IsA
mov ah, 09h
int 21h
jmp ExitProgram
ExitProgram:
mov ah, 4Ch
int 21h
END start
