; a. Filename: EXAM2.ASM
; b. CS243 Lab Hands-on Exam No. 2
; c. First Semester SY 2024-2025
; d. Student Name: CHAZ ZYL G. LLAGUNO
; Date Finished: 09 / 26 / 2024

.MODEL small
.STACK 100h
.DATA
header DB ' THE CALCULATOR$'
header2 DB ' Created by: CHAZ ZYL G. LLAGUNO$'
header3 DB ' Date: 09 / 26/ 2024$'

; menu
menu DB ' Main Menu$'
menu1 DB ' a - Addition$'
menu2 DB ' s - Subtraction$'
menu3 DB ' m - Multiplication$'
menu4 DB ' d - Division$'
menu5 DB ' e - Exit$'
Prompt db ' Enter your choice: $'
inputChar db ?
inputChar2  db 50 DUP ('$')
inputChar3  db 50 DUP ('$')

; Input Messages
addPrompt1 db ' Enter first addend: $'
addPrompt2 db ' Enter second addend: $'

subPrompt1 db ' Enter minued: $'
subPrompt2 db ' Enter subtrahend: $'

multPrompt1 db ' Enter multiplicand: $'
multPrompt2 db ' Enter multiplier: $'

divPrompt1 db ' Enter dividend: $'
divPrompt2 db ' Enter divisor: $'

; Output Messages
addOutput1 db ' First addend is: $'
addOutput2 db ' Second addend is: $'

subOutput1 db ' Minued is: $'
subOutput2 db ' Subtrahend is: $'

multOutput1 db ' Multiplicand is: $'
multOutput2 db ' Multiplier is: $'

divOutput1 db ' Dividend is: $'
divOutput2 db ' Divisor is: $'

; OutputMsg db ' You have chosen $'
outputMsg db ' Thank you.$'
addition db ' Addition$'
subtraction db ' Subtraction$'
multiplication db ' Multiplication$'
division db ' Division$'
exitprog db ' Exit Program$'
invalid db ' INVALID CHOICE!$'

.CODE
ProgramStart:
mov ax,@data
mov ds,ax

; Display header
mov dx,OFFSET header
mov ah,9
int 21h
call NewLine
mov dx,OFFSET header2
mov ah,9
int 21h
call NewLine
mov dx,OFFSET header3
mov ah,9
int 21h
call NewLine
call NewLine

; Display main menu
mov dx,OFFSET menu
mov ah,9
int 21h
call NewLine
mov dx,OFFSET menu1
mov ah,9
int 21h
call NewLine
mov dx,OFFSET menu2
mov ah,9
int 21h
call NewLine
mov dx,OFFSET menu3
mov ah,9
int 21h
call NewLine
mov dx,OFFSET menu4
mov ah,9
int 21h
call NewLine
mov dx,OFFSET menu5
mov ah,9
int 21h
call NewLine

; Prompt for choice
mov dx,OFFSET Prompt
mov ah,9
int 21h
mov ah,1
int 21h

; Store the input character
mov inputChar, al

; Compare the input and jump to the appropriate label
cmp al, 'a'
je Isa
cmp al, 's'
je Iss
cmp al, 'm'
je Ism
cmp al, 'd'
je Isd
cmp al, 'e'
je Ise
; If no valid choice, exit
jmp InvalidChoice

; Addition
Isa:
call AdditionOp
jmp ExitProgram

Iss:
call SubtractionOp
jmp ExitProgram

Ism:
call DoubleLine
mov dx, OFFSET multiplication ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
call NewLine
; First input
LEA DX, multPrompt1
MOV AH, 09h
INT 21h
LEA DX, inputChar2
MOV AH, 0Ah
INT 21h
; Second input
call NewLine
LEA DX, multPrompt2
MOV AH, 09h
INT 21h
LEA DX, inputChar3
MOV AH, 0Ah
INT 21h
call NewLine
call PrintMultiplication
jmp ExitProgram

Isd:
call DoubleLine
mov dx, OFFSET division ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
call NewLine
; First input
LEA DX, divPrompt1
MOV AH, 09h
INT 21h
LEA DX, inputChar2
MOV AH, 0Ah
INT 21h
; Second input
call NewLine
LEA DX, divPrompt2
MOV AH, 09h
INT 21h
LEA DX, inputChar3
MOV AH, 0Ah
INT 21h
call NewLine
jmp ExitProgram
Ise:
call DoubleLine
jmp ExitProgram

InvalidChoice:
call DoubleLine

mov dx, OFFSET invalid
mov ah, 9
int 21h

call DoubleLine
mov dx, OFFSET outputMsg
mov ah, 9
int 21h

mov ah, 4ch
INT 21h

ExitProgram:
call DoubleLine

mov dx, OFFSET exitprog
mov ah, 9
int 21h

call DoubleLine
mov dx, OFFSET outputMsg
mov ah, 9
int 21h
mov ah, 4ch
INT 21h

PrintInput1:
LEA DX, inputChar2 + 2
MOV AH, 09h
INT 21h
ret
PrintInput2:
LEA DX, inputChar3 + 2
MOV AH, 09h
INT 21h
ret

AdditionOp:
call DoubleLine
mov dx, OFFSET addition ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
call NewLine
; First input
LEA DX, addPrompt1
MOV AH, 09h
INT 21h
LEA DX, inputChar2
MOV AH, 0Ah
INT 21h
; Second input
call NewLine
LEA DX, addPrompt2
MOV AH, 09h
INT 21h
LEA DX, inputChar3
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, addOutput1
MOV AH, 09h
INT 21h
call PrintInput1
call NewLine
LEA DX, addOutput2
MOV AH, 09h
INT 21h
call PrintInput2
ret

SubtractionOp:
call DoubleLine
mov dx, OFFSET subtraction ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
call NewLine
; First inpuy
LEA DX, subPrompt1
MOV AH, 09h
INT 21h
LEA DX, inputChar2
MOV AH, 0Ah
INT 21h
; Second input
call NewLine
LEA DX, subPrompt2
MOV AH, 09h
INT 21h
LEA DX, inputChar3
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, subOutput1
MOV AH, 09h
INT 21h
call PrintInput1
call NewLine
LEA DX, subOutput2
MOV AH, 09h
INT 21h
call PrintInput2
ret

PrintMultiplication:
LEA DX, multOutput1
MOV AH, 09h
INT 21h
call PrintInput1
call NewLine
LEA DX, multOutput2
MOV AH, 09h
INT 21h
call PrintInput2
ret

PrintDivision:
LEA DX, divOutput1
MOV AH, 09h
INT 21h
call PrintInput1
call NewLine
LEA DX, divOutput2
MOV AH, 09h
INT 21h
call PrintInput2
ret

DoubleLine:
call NewLine
call NewLine
ret
NewLine:
mov dl, 0Dh ; Carriage return
mov ah, 02h
int 21h
mov dl, 0Ah ; Line feed
int 21h
ret
END ProgramStart

