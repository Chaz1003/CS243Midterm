; Filename: EXE32.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 26 / 2024
; Description: Copy your code from the 2nd Lab Hands-on Exam. Edit your
; code to perform the actual math operations and display the
; results. See sample runs below.
; Create and call a function, sub-program, or procedure for
; the main menu and for each math operation.
; After the user chooses an item from the main menu and
; inputs the numbers, the program performs the operation and
; displays the result, the program does the following:
; 1) Clear the screen (look for the code on how to clear the screen.
; 2) Displays the main menu and waits for the user to choose an operation.
; 3) The program will end when the user chooses Exit.
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
menu1_len = $ - menu1
Prompt db ' Enter your choice: $'
inputChar db ?
inputChar2 db 50 DUP ('$')
inputChar3 db 50 DUP ('$')
result db 50 DUP ('$')
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
outputMsg db ' Press Enter to Continue.$'
result_msg db ' Result: $'
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
mov es, ax
main_loop:
call ClearScreen
call PrintHeader
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
call PrintAddition
jmp main_loop
Iss:
call PrintSubstraction
jmp main_loop
Ism:
call PrintMultiplication
jmp main_loop
Isd:
call PrintDivision
jmp main_loop
Ise:
call DoubleLine
jmp ExitProgram
InvalidChoice:
call DoubleLine
mov dx, OFFSET invalid
mov ah, 9
int 21h
call DoubleLine
jmp main_loop
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
mov al, inputChar2 ; Load first input
add al, '0' ; Convert to ASCII
mov dl, al ; Move to dl for printing
mov ah, 02h ; Function to display character
int 21h ; Print character
ret
PrintInput2:
mov al, inputChar3 ; Load first input
add al, '0' ; Convert to ASCII
mov dl, al ; Move to dl for printing
mov ah, 02h ; Function to display character
int 21h ; Print character
ret
read_number:
mov ah, 01h ; Function to read a character
int 21h ; Read character
sub al, '0' ; Convert from ASCII to integer
ret
write_result:
call NewLine
mov ah, 09h
lea dx, result_msg
int 21h ; Display result message
mov al, result ; Move result to al
add al, '0' ; Convert result to ASCII
mov dl, al ; Move result to dl
mov ah, 02h ; Function to display character
int 21h ; Print the result
call NewLine ; Call newline
call WaitForEnter
ret
PrintAddition:
call DoubleLine
mov dx, OFFSET addition ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
call NewLine
; First input
mov ah, 09h
lea dx, addPrompt1
int 21h ; Display prompt
call read_number ; Read and store first number
mov inputChar2, al
call NewLine
; Second input
mov ah, 09h
lea dx, addPrompt2
int 21h ; Display prompt
call read_number ; Read and store second number
mov inputChar3, al
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
call AdditionOp
ret
PrintSubstraction:
call DoubleLine
mov dx, OFFSET subtraction ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
call NewLine
; First input
mov ah, 09h
lea dx, subPrompt1
int 21h ; Display prompt
call read_number ; Read and store first number
mov inputChar2, al
call NewLine
; Second input
mov ah, 09h
lea dx, subPrompt2
int 21h ; Display prompt
call read_number ; Read and store second number
mov inputChar3, al
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
call SubtractionOp
ret
PrintMultiplication:
call DoubleLine
mov dx, OFFSET multiplication ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
call NewLine
; First input
mov ah, 09h
lea dx, multPrompt1
int 21h ; Display prompt
call read_number ; Read and store first number
mov inputChar2, al
call NewLine
; Second input
mov ah, 09h
lea dx, multPrompt2
int 21h ; Display prompt
call read_number ; Read and store second number
mov inputChar3, al
call NewLine
LEA DX, multOutput1
MOV AH, 09h
INT 21h
call PrintInput1
call NewLine
LEA DX, multOutput2
MOV AH, 09h
INT 21h
call PrintInput2
call MultiplicationOp
ret
PrintDivision:
call DoubleLine
mov dx, OFFSET division ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
call NewLine
; First input
mov ah, 09h
lea dx, divPrompt1
int 21h ; Display prompt
call read_number ; Read and store first number
mov inputChar2, al
call NewLine
; Second input
mov ah, 09h
lea dx, divPrompt2
int 21h ; Display prompt
call read_number ; Read and store second number
mov inputChar3, al
call NewLine
LEA DX, divOutput1
MOV AH, 09h
INT 21h
call PrintInput1
call NewLine
LEA DX, divOutput2
MOV AH, 09h
INT 21h
call PrintInput2
call DivisionOp
ret
PrintHeader:
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
mov ah,09h
mov bl,3Eh
mov cx,14
int 10h
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
ret
AdditionOp:
; Calculate the sum
mov al, inputChar2 ; Load first number
add al, inputChar3 ; Add second number
mov result, al ; Store the result
call write_result
ret
SubtractionOp:
; Calculate the difference
mov al, inputChar2 ; Load first number
sub al, inputChar3 ; Add second number
mov result, al ; Store the result
call write_result
ret
MultiplicationOp:
; Multiply the two numbers
mov al, inputChar2 ; Load first number into AL
mov bl, inputChar3 ; Load second number into BL
mul bl ; Multiply AL by BL (AL = AL * BL)
mov result, al ; Store the result
call write_result
ret
DivisionOp:
; Perform division
mov al, inputChar2 ; Load first number into AL
mov bl, inputChar3 ; Load second number into BL
xor ah, ah ; Clear AH for the division
div bl ; Divide AL by BL (quotient in AL, remainder in AH)
mov result, al ; Store the quotient
call write_result
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
ClearScreen:
mov ax, 0600h ; Function 00: Scroll up entire window
mov bh, 07h ; Attribute (white on black)
mov cx, 0 ; Upper left corner (row, column)
mov dx, 184fh ; Lower right corner (row, column)
int 10h
ret
WaitForEnter:
call NewLine
mov ah, 09h
lea dx, outputMsg
int 21h ; Display result message
mov ah, 01h ; Function to read a character
int 21h ; Read character
cmp al, 0Dh ; Check if it is Enter (carriage return)
jne WaitForEnter ; If not, loop until Enter is pressed
ret
END ProgramStart
