; Filename: EXER1.ASM
; Display the alphabet
; CHAZ ZYL G. LLAGUNO
; Date: August 29, 2024

.model small
.stack 100

.DATA
header1 DB 'FILENAME: EXER1.ASM$'
header2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
header3 DB 'Description: Displays the alphabet in lowercase and uppercase using single characters.$'
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


mov ah,02h
mov cl,61h 
mov dl,cl
int 21h

mov ah,02h
mov cl,62h 
mov dl,cl
int 21h

mov ah,02h
mov cl,63h 
mov dl,cl
int 21h

mov ah,02h
mov cl,64h 
mov dl,cl
int 21h

mov ah,02h
mov cl,65h 
mov dl,cl
int 21h


mov ah,02h
mov cl,66h 
mov dl,cl
int 21h


mov ah,02h
mov cl,67h 
mov dl,cl
int 21h


mov ah,02h
mov cl,68h 
mov dl,cl
int 21h


mov ah,02h
mov cl,69h 
mov dl,cl
int 21h


mov ah,02h
mov cl,6Ah 
mov dl,cl
int 21h


mov ah,02h
mov cl,6Bh 
mov dl,cl
int 21h


mov ah,02h
mov cl,6Ch 
mov dl,cl
int 21h


mov ah,02h
mov cl,6Dh 
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


mov ah,02h
mov cl,70h 
mov dl,cl
int 21h


mov ah,02h
mov cl,71h 
mov dl,cl
int 21h


mov ah,02h
mov cl,72h 
mov dl,cl
int 21h


mov ah,02h
mov cl,73h 
mov dl,cl
int 21h


mov ah,02h
mov cl,74h 
mov dl,cl
int 21h


mov ah,02h
mov cl,75h 
mov dl,cl
int 21h


mov ah,02h
mov cl,76h 
mov dl,cl
int 21h


mov ah,02h
mov cl,77h 
mov dl,cl
int 21h


mov ah,02h
mov cl,78h 
mov dl,cl
int 21h


mov ah,02h
mov cl,79h 
mov dl,cl
int 21h

mov ah,02h
mov cl,7Ah 
mov dl,cl
int 21h

;NEW LINE

mov ah,02h
mov cl,0Ah 
mov dl,cl
int 21h

;CAPITAL LETTERS

mov ah,02h
mov cl,41h 
mov dl,cl
int 21h

mov ah,02h
mov cl,42h 
mov dl,cl
int 21h

mov ah,02h
mov cl,43h 
mov dl,cl
int 21h

mov ah,02h
mov cl,44h 
mov dl,cl
int 21h

mov ah,02h
mov cl,45h 
mov dl,cl
int 21h


mov ah,02h
mov cl,46h 
mov dl,cl
int 21h


mov ah,02h
mov cl,47h 
mov dl,cl
int 21h


mov ah,02h
mov cl,48h 
mov dl,cl
int 21h

mov ah,02h
mov cl,49h 
mov dl,cl
int 21h

mov ah,02h
mov cl,4Ah 
mov dl,cl
int 21h

mov ah,02h
mov cl,4Bh 
mov dl,cl
int 21h

mov ah,02h
mov cl,4Ch 
mov dl,cl
int 21h

mov ah,02h
mov cl,4Dh 
mov dl,cl
int 21h

mov ah,02h
mov cl,4Eh 
mov dl,cl
int 21h

mov ah,02h
mov cl,4Fh 
mov dl,cl
int 21h

mov ah,02h
mov cl,50h 
mov dl,cl
int 21h

mov ah,02h
mov cl,51h 
mov dl,cl
int 21h

mov ah,02h
mov cl,52h 
mov dl,cl
int 21h

mov ah,02h
mov cl,53h 
mov dl,cl
int 21h

mov ah,02h
mov cl,54h 
mov dl,cl
int 21h

mov ah,02h
mov cl,55h 
mov dl,cl
int 21h

mov ah,02h
mov cl,56h 
mov dl,cl
int 21h

mov ah,02h
mov cl,57h 
mov dl,cl
int 21h

mov ah,02h
mov cl,58h 
mov dl,cl
int 21h

mov ah,02h
mov cl,59h 
mov dl,cl
int 21h

mov ah,02h
mov cl,5Ah 
mov dl,cl
int 21h

mov ah,4Ch
int 21h ; terminate
end start ; end program


