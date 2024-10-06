
; Exercise No. 5
; FORMING LARGE CHARACTERS (RED CROSS)
; CHAZ ZYL G. LLAGUNO
; Date: August 29, 2024

.model small
.stack 100

.DATA
header1 DB 'FILENAME: EXER5.ASM$'
header2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
header3 DB 'Description: FORMING LARGE CHARACTERS (RED CROSS)$'
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

;1st Row

mov ah,09h
mov bl,1Eh
mov cx,5
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 0Ah
mov dl, cl
Int 21h

;2nd row

mov ah,09h
mov bl,1Eh
mov cx,2
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,4Eh
mov cx,1
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,1Eh
mov cx,2
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 0Ah
mov dl, cl
Int 21h

;3rd row

mov ah,09h
mov bl,1Eh
mov cx,1
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,4Eh
mov cx,3
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,1Eh
mov cx,1
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 0Ah
mov dl, cl
Int 21h

;4th row

mov ah,09h
mov bl,1Eh
mov cx,2
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,4Eh
mov cx,1
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,1Eh
mov cx,2
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 0Ah
mov dl, cl
Int 21h

;5th row

mov ah,09h
mov bl,1Eh
mov cx,5
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

Int 27h
end start
