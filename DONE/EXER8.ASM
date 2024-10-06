; Filename: EXER8.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 19 / 2024
; Description: Display text using string variables (4 string variables)
.MODEL small
.STACK 200h
.DATA
header1 DB 'FILENAME: EXER8.ASM$'
header2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
header3 DB 'Description: Display text using string variables (4 string variables)$'
header4 DB 'DATE: 08 / 29 / 2024$'

msg1    DB ' Chaz Zyl G. Llaguno$'
msg2    DB ' Bachelor of Science in Computer Science$'
msg3    DB ' College of Computer Studies$'
msg4    DB ' Cebu Institute of Technology - University$'
newline DB 0Dh,0Ah, '$' ; New line

.CODE
start:
; Initialize data segment
mov ax, @data
mov ds, ax
; Print the headers
mov dx, OFFSET header1
mov ah, 09h
int 21h
mov dx, OFFSET newline
mov ah, 09h
int 21h
mov dx, OFFSET header2
mov ah, 09h
int 21h
mov dx, OFFSET newline
mov ah, 09h
int 21h
mov dx, OFFSET header3
mov ah, 09h
int 21h
mov dx, OFFSET newline
mov ah, 09h
int 21h
mov dx, OFFSET header4
mov ah, 09h
int 21h

; Newline after header
mov dx, OFFSET newline
mov ah, 09h
int 21h

mov dx, OFFSET newline
mov ah, 09h
int 21h
mov dx, OFFSET msg1
mov ah, 09h
int 21h

mov dx, OFFSET newline
mov ah, 09h
int 21h
mov dx, OFFSET msg2
mov ah, 09h
int 21h

mov dx, OFFSET newline
mov ah, 09h
int 21h
mov dx, OFFSET msg3
mov ah, 09h
int 21h

mov dx, OFFSET newline
mov ah, 09h
int 21h
mov dx, OFFSET msg4
mov ah, 09h
int 21h


mov ah,4ch
int 21h
end start
