; Exercise No. 2
; Display single characters
; CHAZ ZYL G. LLAGUNO
; Date: August 29, 2024

.model small
.stack 100
.DATA
header1 DB 'FILENAME: EXER2.ASM$'
header2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
header3 DB 'Description: Display the programmer''s full name using single characters$'
header4 DB 'DATE: 08 / 29 / 2024$'
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

;FIRST NAME

mov ah,02h
mov cl,43h 
mov dl,cl
int 21h

mov ah,02h
mov cl,68h 
mov dl,cl
int 21h

mov ah,02h
mov cl,61h 
mov dl,cl
int 21h

mov ah,02h
mov cl,7Ah 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,5Ah 
mov dl,cl
int 21h

mov ah,02h
mov cl,79h 
mov dl,cl
int 21h

mov ah,02h
mov cl,6Ch 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

; MIDDLE NAME

mov ah,02h
mov cl,47h 
mov dl,cl
int 21h

mov ah,02h
mov cl,6Fh 
mov dl,cl
int 21h

mov ah,02h
mov cl,6Eh 
mov dl,cl
int 21h

mov ah,02h
mov cl,7Ah 
mov dl,cl
int 21h

mov ah,02h
mov cl,61h 
mov dl,cl
int 21h

mov ah,02h
mov cl,6Ch 
mov dl,cl
int 21h

mov ah,02h
mov cl,65h 
mov dl,cl
int 21h

mov ah,02h
mov cl,73h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

; LAST NAME

mov ah,02h
mov cl,4Ch 
mov dl,cl
int 21h

mov ah,02h
mov cl,6Ch 
mov dl,cl
int 21h

mov ah,02h
mov cl,61h 
mov dl,cl
int 21h

mov ah,02h
mov cl,67h 
mov dl,cl
int 21h

mov ah,02h
mov cl,75h 
mov dl,cl
int 21h

mov ah,02h
mov cl,6Eh 
mov dl,cl
int 21h

mov ah,02h
mov cl,6Fh 
mov dl,cl
int 21h

; NEW LINE

mov ah,02h
mov cl,0Ah 
mov dl,cl
int 21h

;

int 27h ; terminate
end start ; end program
