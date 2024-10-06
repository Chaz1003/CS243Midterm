; Filename: EXER9.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 08 / 29 / 2024
; Description: AUGUST 2024 Calendar using ASCII characters, with borders 
.MODEL small
.STACK 200h
.DATA
header1 DB 'FILENAME: EXER9.ASM$'
header2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
header3 DB 'Description: AUGUST 2024 Calendar using ASCII characters, with borders $'
header4 DB 'DATE: 08 / 29 / 2024$'

horizontalBorder    DB '    -------------------------------------------------------------------------$'
msg1                DB '   |                            AUGUST 2024                                 |$'
msg2                DB '   |   MON   |   TUE    |   WED   |   THU   |   FRI    |   SAT    |   SUN   |$'
msg3                DB '   |   29    |    30    |    31   |    1    |    2     |    3     |    4    |$'
msg4                DB '   |    5    |    6     |    7    |    8    |    9     |    10    |    11   |$'
msg5                DB '   |    12   |    13    |    14   |    15   |    16    |    17    |    18   |$'
msg6                DB '   |    19   |    20    |    21   |    22   |    23    |    24    |    25   |$'
msg7                DB '   |    26   |    27    |    28   |    29   |    30    |    31    |    1    |$'
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

mov dx, OFFSET horizontalBorder
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

mov dx, OFFSET horizontalBorder
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

mov dx, OFFSET horizontalBorder
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

mov dx, OFFSET horizontalBorder
mov ah, 09h
int 21h

mov dx, OFFSET newline
mov ah, 09h
int 21h

mov dx, OFFSET msg4
mov ah, 09h
int 21h

mov dx, OFFSET newline
mov ah, 09h
int 21h

mov dx, OFFSET horizontalBorder
mov ah, 09h
int 21h

mov dx, OFFSET newline
mov ah, 09h
int 21h

mov dx, OFFSET msg5
mov ah, 09h
int 21h

mov dx, OFFSET newline
mov ah, 09h
int 21h

mov dx, OFFSET horizontalBorder
mov ah, 09h
int 21h

mov dx, OFFSET newline
mov ah, 09h
int 21h

mov dx, OFFSET msg6
mov ah, 09h
int 21h

mov dx, OFFSET newline
mov ah, 09h
int 21h

mov dx, OFFSET horizontalBorder
mov ah, 09h
int 21h

mov dx, OFFSET newline
mov ah, 09h
int 21h

mov dx, OFFSET msg7
mov ah, 09h
int 21h

mov dx, OFFSET newline
mov ah, 09h
int 21h

mov dx, OFFSET horizontalBorder
mov ah, 09h
int 21h

mov ah,4ch
int 21h
end start
