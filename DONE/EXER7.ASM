; Exercise No. 7
; Blinking Duck
; CHAZ ZYL G. LLAGUNO
; Date: August 29, 2024

.model small
.stack 100
.DATA
header1 DB 'FILENAME: EXER7.ASM$'
header2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
header3 DB 'Description: Blinking Duck$'
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
mov bl,3Eh
mov cx,14
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
mov bl,3Eh
mov cx,4
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

mov ah,09h
mov bl,6Eh
mov cx,4
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

mov ah,09h
mov bl,3Eh
mov cx,6
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
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 0Ah
mov dl, cl
Int 21h

;3rd row

mov ah,09h
mov bl,3Eh
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
mov bl,6Eh
mov cx,6
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
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,3Eh
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

;4th row

mov ah,09h
mov bl,3Eh
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

mov ah,09h
mov bl,6Eh
mov cx,1
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,84h
mov cx,1
int 10h

mov ah,2
mov dl,03h
int 21h

mov ah,09h
mov bl,6Eh
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
mov bl,3Eh
mov cx,5
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,3Eh
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
mov cl, 0Ah
mov dl, cl
Int 21h

;5th row

mov ah,09h
mov bl,3Eh
mov cx,1
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,1Eh
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
mov bl,6Eh
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

mov ah,09h
mov bl,3Eh
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

;6th row

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
mov bl,6Eh
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
mov bl,3Eh
mov cx,6
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

;7th row

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

mov ah,09h
mov bl,6Eh
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

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,6Eh
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

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,6Eh
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

;8th row

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
mov bl,6Eh
mov cx,8
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
mov bl,0Eh
mov cx,1
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,6Eh
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

;9th row

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,6Eh
mov cx,4
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

mov ah,09h
mov bl,0Eh
mov cx,1
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,6Eh
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
mov bl,0Eh
mov cx,1
int 10h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,6Eh
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

;10th row

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,6Eh
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

mov ah,09h
mov bl,0Eh
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
mov bl,6Eh
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

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 0Ah
mov dl, cl
Int 21h

;11th row

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 20h
mov dl, cl
Int 21h

mov ah,09h
mov bl,6Eh
mov cx,11
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

;12th row

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
mov bl,6Eh
mov cx,9
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
mov cl, 20h
mov dl, cl
Int 21h

mov ah, 02h
mov cl, 0Ah
mov dl, cl
Int 21h

;13th row

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

mov ah,09h
mov bl,6Eh
mov cx,7
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


mov ah,4Ch
int 21h ; terminate
end start ; end program
