; Filename: EXER26.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 26 / 2024
; Description: This assembly language program will accept two integers, add the two integers, 
; and display the sum of the two integers. 


.MODEL SMALL
.STACK 100h
.DATA
    prompt1      db 'Enter first number (0-9): $'
    prompt2      db 'Enter second number: $'
    result_msg   db 'The result is: $'
    num1         db ?
    num2         db ?
    result       db ?

.DATA
head1 DB 'FILENAME: EXER26.ASM$'
head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
head3 DB 'Description: Accepts 2 integers and gets the sum, as long as its a single digit$'
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
    int 21h                ; Display prompt
    call read_number       ; Read and store first number
    mov num1, al

    call NewLine           ; New line

    ; Read second number
    mov ah, 09h
    lea dx, prompt2
    int 21h                ; Display prompt
    call read_number       ; Read and store second number
    mov num2, al

    ; Calculate the sum
    mov al, num1          ; Load first number
    add al, num2          ; Add second number
    mov result, al        ; Store the result

    call NewLine

    ; Display the result
    call write_result

    ; Exit program
    mov ax, 4C00h
    int 21h

; Procedure to read a single digit number (0-9)
read_number:
    mov ah, 01h            ; Function to read a character
    int 21h                ; Read character
    sub al, '0'            ; Convert from ASCII to integer
    ret

; Procedure to write the result
write_result:
    mov ah, 09h
    lea dx, result_msg
    int 21h                ; Display result message

    mov al, result         ; Move result to al
    add al, '0'            ; Convert result to ASCII
    mov dl, al             ; Move result to dl
    mov ah, 02h            ; Function to display character
    int 21h                ; Print the result

    call NewLine           ; Call newline

NewLine:
    mov dl, 0Dh            ; Carriage return
    mov ah, 02h
    int 21h
    mov dl, 0Ah            ; Line feed
    int 21h
    ret
END start
