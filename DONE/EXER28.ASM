; Filename: EXER28.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 26 / 2024
; Description: This assembly language program will accept two integers, multiply the two
; integers, and display the product of the two integers.
.MODEL SMALL
.STACK 100h
.DATA
prompt1 db 'Enter first number (0-9): $'
prompt2 db 'Enter second number (0-9): $'
result_msg db 'The result is: $'
num1 db ?
num2 db ?
result db ?
head1 DB 'FILENAME: EXER28.ASM$'
head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
head3 DB 'Description: Accepts 2 integers and gets the product, as long as its one digit$'
head4 DB 'DATE: 09 / 26 / 2024$'

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
; Newline after header
call NewLine


; Read first number
mov ah, 09h
lea dx, prompt1
int 21h ; Display prompt
call read_number ; Read the number and store in AL
mov num1, al ; Store the first number
call NewLine ; New line
; Read second number
mov ah, 09h
lea dx, prompt2
int 21h ; Display prompt
call read_number ; Read the number and store in AL
mov num2, al ; Store the second number
; Multiply the two numbers
mov al, num1 ; Load first number into AL
mov bl, num2 ; Load second number into BL
mul bl ; Multiply AL by BL (AL = AL * BL)
mov result, al ; Store the result
call NewLine
; Display the result
call write_result
; Exit program
mov ax, 4C00h
int 21h
; Procedure to read a single digit number (0-9)
read_number:
mov ah, 01h ; Function to read a character
int 21h ; Read character
sub al, '0' ; Convert from ASCII to integer
ret
; Procedure to write the result
write_result:
mov ah, 09h
lea dx, result_msg
int 21h ; Display result message
mov al, result ; Move result to AL
add al, '0' ; Convert result to ASCII
mov dl, al ; Move result to DL
mov ah, 02h ; Function to display character
int 21h ; Print the result
call NewLine ; Call newline
NewLine:
mov dl, 0Dh ; Carriage return
mov ah, 02h
int 21h
mov dl, 0Ah ; Line feed
int 21h
ret
END start

