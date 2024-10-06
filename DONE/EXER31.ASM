; Filename: EXER31.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 26 / 2024
; Description: This assembly language program will accept an integer. Using a loop, display
; from 1 to the integer value entered by the user.
.MODEL SMALL
.STACK 100h
.DATA
prompt db 'Enter an integer: $'
newline db 13, 10, '$'
input_buffer db 5 ; Max 5 characters for input
input_length db 0 ; Length of input (set by DOS)
number dw ? ; Variable to store the input number
.CODE
start:
mov ax, @data
mov ds, ax
; Read an integer
mov ah, 09h
lea dx, prompt
int 21h ; Display prompt
call read_integer
; Check if the number is valid
cmp ax, -1 ; Check if AX is -1 (error)
je .error ; Jump to error handling
mov number, ax ; Store valid number
; Loop from 1 to the entered integer
mov cx, number ; Set loop counter to the entered integer
mov ax, 1 ; Start from 1
.loop:
; Print AX
call print_integer
; Print newline
mov ah, 09h
lea dx, newline
int 21h
inc ax ; Increment AX
loop .loop ; Loop until CX is 0
; Exit program
mov ax, 4C00h
int 21h
.error:
; Handle error (invalid input)
mov ah, 09h
lea dx, newline ; Print newline
int 21h
; Print error message
mov dx, OFFSET prompt ; Print prompt again for clarity
int 21h
jmp start ; Restart the program
; Procedure to read an integer
read_integer:
; Allocate buffer for user input
mov ah, 0Ah ; Function to read string
lea dx, input_buffer ; Load address of input buffer
int 21h ; Call DOS interrupt
; The first byte of input_buffer is the maximum length,
; the second byte is the actual length.
mov cl, [input_buffer + 1] ; Get the length of input (second byte)
xor ax, ax ; Clear AX
; Check for empty input
cmp cl, 0
je .done ; If no characters, skip to done
.next_digit:
mov bl, [input_buffer + 2 + ax] ; Get the next character (offset by 2 for length bytes)
cmp bl, 13 ; Check for carriage return (end of input)
je .done ; If end, jump to done
; Validate that the character is a digit
cmp bl, '0'
jb .error_input ; If less than '0', it's invalid
cmp bl, '9'
ja .error_input ; If greater than '9', it's invalid
sub bl, '0' ; Convert ASCII to integer
mov cx, 10 ; Set base for multiplication
mul cx ; AX *= 10
add ax, bx ; AX += new digit
inc ax ; Move to the next character
jmp .next_digit ; Repeat for next character
.done:
ret
.error_input:
; Set AX to -1 to indicate an error
mov ax, -1
ret
; Procedure to print an integer
print_integer:
; Check if AX is 0
cmp ax, 0
je .print_zero ; If AX is zero, handle printing zero
; Convert AX to string
mov bx, 10 ; Base 10
xor cx, cx ; Clear CX (digit counter)
.reverse_loop:
xor dx, dx ; Clear DX before DIV
div bx ; Divide AX by 10
push dx ; Push remainder (digit)
inc cx ; Increment digit counter
test ax, ax ; Check if AX is zero
jnz .reverse_loop ; Repeat until AX is zero
.print_loop:
pop dx ; Pop digit
add dl, '0' ; Convert to ASCII
mov ah, 02h ; DOS function to print character
int 21h ; Call DOS interrupt
loop .print_loop ; Repeat for all digits
ret
.print_zero:
; Special case for zero
mov dl, '0'
mov ah, 02h ; DOS function to print character
int 21h ; Call DOS interrupt
ret
END start

