; Filename: EXER29.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 26 / 2024
; Description: This assembly language program will accept two integers, divide the first by
; the second integer, and display the quotient of the two
; integers.
.MODEL SMALL
.STACK 100h
.DATA
prompt1 db 'Enter first number (0-9): $'
prompt2 db 'Enter second number (1-9): $' ; Changed to 1-9 to avoid divide by zero
result_msg db 'The result is: $'
num1 db ?
num2 db ?
result db ?
head1 DB 'FILENAME: EXER29.ASM$'
head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
head3 DB 'Description: Accepts 2 integers and gets the quotient, as long as its one digit$'
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
; Perform division
mov al, num1 ; Load first number into AL
mov bl, num2 ; Load second number into BL
xor ah, ah ; Clear AH for the division
div bl ; Divide AL by BL (quotient in AL, remainder in AH)
mov result, al ; Store the quotient
; Display the result
call NewLine
call write_result
jmp end_program ; Jump to end of the program
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
ret
NewLine:
mov dl, 0Dh ; Carriage return
mov ah, 02h
int 21h
mov dl, 0Ah ; Line feed
int 21h
ret
end_program:
; Exit program
mov ax, 4C00h
int 21h
END start

