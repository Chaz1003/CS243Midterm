; Filename: EXER21.ASM
; Date: 09 / 19 / 24
; Description: This assembly language program will ask for your first name, middle name, and
; family name. Then display “Hello, FIRST NAME MIDDLE NAME FAMILY NAME!”.
 
.model small
.stack 100h
.data
    Firstname db 50, ?, 50 dup(' ')  
    Middlename db 50, ?, 50 dup(' ')
    Lastname db 50, ?, 50 dup(' ')
 
    header db "REGISTRATION FORM: $"
    input1 db 0ah,"Enter First Name: $"
    input2 db 0ah,"Enter Middle Name: $"
    input3 db 0ah,"Enter Last Name: $"
 
    output1 db "Hello, $"
    newline db 0Dh, 0Ah, '$'

    head1 DB 'FILENAME: EXER21.ASM$'
    head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
    head3 DB 'Description: Asks for user''s full name, then outputs a greeting$'
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
mov ah, 09
int 21h
 
; -------- First name ----------
    lea dx, header
    mov ah, 9
    int 21h
 
    lea dx, input1
    mov ah, 9
    int 21h
 
    mov ah, 0Ah
    lea dx, Firstname
    int 21h
 
 
 
; -------- Middle name ----------
    lea dx, input2
    mov ah, 9
    int 21h
 
    mov ah, 0Ah
    lea dx, Middlename
    int 21h
 
 
 
; -------- Last name ----------
    lea dx, input3
    mov ah, 9
    int 21h
 
    mov ah, 0Ah
    lea dx, Lastname
    int 21h
 
 
 
; -------- Display ----------
 
    mov dx, OFFSET newline
    mov ah, 09
    int 21h

    lea dx, output1
    mov ah, 9
    int 21h
 
    xor bx, bx
    mov bl, Firstname[1]
    mov Firstname[bx+2], '$'
    lea dx, Firstname + 2
    mov ah, 09h
    int 21h
 
    mov ah, 02h
    mov dl, ' '
    int 21h
 
    xor bx, bx
    mov bl, Middlename[1]
    mov Middlename[bx+2], '$'
    lea dx, Middlename + 2
    mov ah, 09h
    int 21h
 
    mov ah, 02h
    mov dl, ' '
    int 21h
 
    xor bx, bx
    mov bl, Lastname[1]
    mov Lastname[bx+2], '$'
    lea dx, LastnaMe + 2
    mov ah, 09h
    int 21h
 
    mov ah, 02h
    mov dl, '!'
    int 21h
 
int 27h
end start