; Filename: EXER23.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 19 / 2024
; Description: Create an Automated Teller Machine (ATM) main menu screen. Ask the 
; user to input a number corresponding to an item in the main menu. 
; Print back the number input by user and the corresponding 
; transaction.
.MODEL small
.STACK 100h
.DATA
header DB ' Cebu Institute of Technology - University$'
header2 DB ' Automated Teller Machine$'
; menu
menu DB ' Main Menu$'
menu1 DB ' 1 Balance Inquiry$'
menu2 DB ' 2 Withdrawal$'
menu3 DB ' 3 Deposit$'
menu4 DB ' 4 Transfer$'
menu5 DB ' 5 Bills Payment$'
menu6 DB ' 6 Change Pin$'
menu7 DB ' 7 Exit$'
Prompt db ' Enter number of your choice: $'
inputChar db ?
OutputMsg db ' You have chosen $'
outputMsg1 db ' Thank you for banking with us!$'
outputMsg2 db ' Copyright 2024$'
outputMsg3 db ' Programmer: CHAZ ZYL G. LLAGUNO$'

.DATA
head1 DB 'FILENAME: EXER23.ASM$'
head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
head3 DB 'Description: Automated Teller Machine$'
head4 DB 'DATE: 09 / 19 / 2024$'

.CODE
ProgramStart:
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
; Display header
mov dx,OFFSET header
mov ah,9
int 21h
call NewLine
mov dx,OFFSET header2
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
mov dx,OFFSET menu6
mov ah,9
int 21h
call NewLine
mov dx,OFFSET menu7
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
cmp al, '1'
je Is1
cmp al, '2'
je Is2
cmp al, '3'
je Is3
cmp al, '4'
je Is4
cmp al, '5'
je Is5
cmp al, '6'
je Is6
cmp al, '7'
je Is7
; If no valid choice, exit
jmp ExitProgram
Is1:
call DoubleLine
mov dx, OFFSET OutputMsg ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
mov dx, OFFSET menu1 ; Set dx to point to the chosen menu option
mov ah, 9 ; Function to display a string
int 21h ; Display the chosen menu option
jmp ExitProgram ; Jump to exit program
Is2:
call DoubleLine
mov dx, OFFSET OutputMsg ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
mov dx, OFFSET menu2 ; Set dx to point to the chosen menu option
mov ah, 9 ; Function to display a string
int 21h ; Display the chosen menu option
jmp ExitProgram ; Jump to exit program
Is3:
call DoubleLine
mov dx, OFFSET OutputMsg ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
mov dx, OFFSET menu3 ; Set dx to point to the chosen menu option
mov ah, 9 ; Function to display a string
int 21h ; Display the chosen menu option
jmp ExitProgram ; Jump to exit program
Is4:
call DoubleLine
mov dx, OFFSET OutputMsg ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
mov dx, OFFSET menu4 ; Set dx to point to the chosen menu option
mov ah, 9 ; Function to display a string
int 21h ; Display the chosen menu option
jmp ExitProgram ; Jump to exit program
Is5:
call DoubleLine
mov dx, OFFSET OutputMsg ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
mov dx, OFFSET menu5 ; Set dx to point to the chosen menu option
mov ah, 9 ; Function to display a string
int 21h ; Display the chosen menu option
jmp ExitProgram ; Jump to exit program
Is6:
call DoubleLine
mov dx, OFFSET OutputMsg ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
mov dx, OFFSET menu6 ; Set dx to point to the chosen menu option
mov ah, 9 ; Function to display a string
int 21h ; Display the chosen menu option
jmp ExitProgram ; Jump to exit program
Is7:
call DoubleLine
mov dx, OFFSET OutputMsg ; Set dx to point to the output message
mov ah, 9 ; Function to display a string
int 21h ; Display the output message
mov dx, OFFSET menu7 ; Set dx to point to the chosen menu option
mov ah, 9 ; Function to display a string
int 21h ; Display the chosen menu option
jmp ExitProgram ; Jump to exit program
ExitProgram:
call DoubleLine
mov dx, OFFSET outputMsg1
mov ah, 9
int 21h
call NewLine
mov dx, OFFSET outputMsg2
mov ah, 9
int 21h
call NewLine
mov dx, OFFSET outputMsg3
mov ah, 9
int 21h
mov ah, 4ch
int 21h
; Subroutine to print a newline
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

