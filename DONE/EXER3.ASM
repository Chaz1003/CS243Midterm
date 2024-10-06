; Exercise No. 3
; Display single characters
; CHAZ ZYL G. LLAGUNO
; Date: August 29, 2024

.model small
.stack 100
.DATA
header1 DB 'FILENAME: EXER3.ASM$'
header2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
header3 DB 'Description: Display 0-9 and 20 special symbols with space in between$'
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

;NUMBERS

mov ah,02h
mov cl,30h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,31h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,32h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,33h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,34h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,35h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,36h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,37h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,38h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,39h 
mov dl,cl
int 21h

mov ah,02h
mov cl,0Ah 
mov dl,cl
int 21h

; 10 Special symbols

mov ah,02h
mov cl,21h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,22h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,23h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,24h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,25h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,26h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,27h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,28h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,29h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,2Ah 
mov dl,cl
int 21h

mov ah,02h
mov cl,0Ah 
mov dl,cl
int 21h

; 10 Special characters

mov ah,02h
mov cl,2Bh 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,2Ch 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,2Dh 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,2Eh 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,2Fh 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,5Eh 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,5Fh 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,60h 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,7Bh 
mov dl,cl
int 21h

mov ah,02h
mov cl,20h 
mov dl,cl
int 21h

mov ah,02h
mov cl,7Ch 
mov dl,cl
int 21h

mov ah,02h
mov cl,0Ah 
mov dl,cl
int 21h

int 27h ; terminate
end start ; end program
