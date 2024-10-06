; Filename: EXER24.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 19 / 2024
; Description: Edit your Laboratory Prelim Hands-on Exam. Before the form displays, 
; ask the user to input all the needed data. Afterwards, display the 
; form with all the data entered by the user.
.model small
.data
header1 db ' Cebu Institute of Technology - University $'
header2 db ' VEHICLE STICKER APPLICATION FORM $'
header3 db ' Please fill out form below. $'
app1 db ' Personnel Type: $'
app2 db ' Vehicle Sticker Type: $'
app3 db ' Name of Applicant/Driver: $'
app4 db ' ID Number: $'
app5 db ' Mobile Number: $'
app6 db ' Address: $'
app7 db ' Vehicle Make(s)/Brand: $'
app8 db ' Plate Number: $'
app9 db ' Vehicle Color: $'
app10 db ' Vehicle Type: $'
app11 db ' SUBMIT $'
app12 db ' Copyright 2024 CHAZ ZYL G. LLAGUNO $'
app13 db ' Thank you! $'
drop db '|____________|$'
drop2 db '|_________ $'
drop3 db ' V|$'
; User input prompts
personnelPrompt DB 'Personnel Type: $'
stickerPrompt DB 'Vehicle Sticker Type: $'
namePrompt DB 'Name of Applicant/Driver: $'
idPrompt DB 'ID Number: $'
numberPrompt DB 'Mobile Number: $'
addressPrompt DB 'Address: $'
brandPrompt DB 'Vehicle Make(s)/Brand: $'
platenumPrompt DB 'Plate Number: $'
colorPrompt DB 'Vehicle Color: $'
typePrompt DB 'Vehicle Type: $'
; User input 
personnel DB 50 DUP ('$')
sticker DB 50 DUP ('$')
fullname DB 50 DUP ('$')
id DB 50 DUP ('$')
number DB 10000 DUP ('$')
address DB 50 DUP ('$')
brand DB 50 DUP ('$')
platenum DB 50 DUP ('$')
color DB 50 DUP ('$')
vehicletype DB 50 DUP ('$')
whitespace db' $'
a_cls db 27, "[2J$" ; Clear entire screen in currently set attributes
a_reset db 27, "[0m$" ; Reset attributes to standard (black on white)
a_blink db 27, "[5m$" ; Characters blink (blink doesn't work in all environments)
a_bright db 27, "[1m$" ; Bright colored characters
a_dim db 27, "[2m$" ; Dim colored characters
a_fg_black db 27, "[30m$" ; Foreground colors
a_fg_red db 27, "[31m$"
a_fg_green db 27, "[32m$"
a_fg_yellow db 27, "[33m$"
a_fg_blue db 27, "[34m$"
a_fg_magenta db 27, "[35m$"
a_fg_cyan db 27, "[36m$"
a_fg_white db 27, "[37m$"
a_bg_black db 27, "[40m$" ; Background colors
a_bg_red db 27, "[41m$"
a_bg_green db 27, "[42m$"
a_bg_yellow db 27, "[43m$"
a_bg_blue db 27, "[44m$"
a_bg_magenta db 27, "[45m$"
a_bg_cyan db 27, "[46m$"
a_bg_white db 27, "[47m$"

.DATA
head1 DB 'FILENAME: EXER24.ASM$'
head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
head3 DB 'Description: Vehicle Sticker Application Form $'
head4 DB 'DATE: 09 / 19 / 2024$'

.CODE
ProgramStart:
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
; Input Personnel Type
LEA DX, personnelPrompt
MOV AH, 09h
INT 21h
LEA DX, personnel
MOV AH, 0Ah
INT 21h
; Input Sticker Type
call NewLine
LEA DX, stickerPrompt
MOV AH, 09h
INT 21h
LEA DX, sticker
MOV AH, 0Ah
INT 21h
; Input Sticker Type
call NewLine
LEA DX, namePrompt
MOV AH, 09h
INT 21h
LEA DX, fullname
MOV AH, 0Ah
INT 21h
; Input Sticker Type
call NewLine
LEA DX, idPrompt
MOV AH, 09h
INT 21h
LEA DX, id
MOV AH, 0Ah
INT 21h
; Input Sticker Type
call NewLine
LEA DX, numberPrompt
MOV AH, 09h
INT 21h
LEA DX, number
MOV AH, 0Ah
INT 21h
; Input Sticker Type
call NewLine
LEA DX, addressPrompt
MOV AH, 09h
INT 21h
LEA DX, address
MOV AH, 0Ah
INT 21h
; Input Sticker Type
call NewLine
LEA DX, brandPrompt
MOV AH, 09h
INT 21h
LEA DX, brand
MOV AH, 0Ah
INT 21h
; Input Sticker Type
call NewLine
LEA DX, platenumPrompt
MOV AH, 09h
INT 21h
LEA DX, platenum
MOV AH, 0Ah
INT 21h
; Input Sticker Type
call NewLine
LEA DX, colorPrompt
MOV AH, 09h
INT 21h
LEA DX, color
MOV AH, 0Ah
INT 21h
; Input Sticker Type
call NewLine
LEA DX, typePrompt
MOV AH, 09h
INT 21h
LEA DX, vehicletype
MOV AH, 0Ah
INT 21h
; ; clear screen
; lea dx,a_cls 
; int 21h 
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters white
lea dx,a_fg_white
int 21h
; red background for characters
lea dx,a_bg_red 
int 21h
; print texts
lea dx,header1 
int 21h
lea dx,header2 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters yellow
lea dx,a_fg_yellow
int 21h
; red background for characters
lea dx,a_bg_red 
int 21h
; blinking characters
lea dx,a_blink
int 21h
; print text
lea dx,header3
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters black
lea dx,a_fg_black
int 21h
; red background for characters
lea dx,a_bg_white 
int 21h
; print texts
lea dx,app1 
int 21h
; reset to defaults
lea dx,a_reset
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_black 
int 21h
lea dx,drop2 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_red
int 21h
; make the characters white
lea dx,a_fg_white
int 21h
lea dx,drop3
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
;----------------------------------------------------------
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters white
lea dx,a_fg_black
int 21h
; red background for characters
lea dx,a_bg_white 
int 21h
; print texts
lea dx,app2 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_black 
int 21h
lea dx,drop2 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_red
int 21h
; make the characters white
lea dx,a_fg_white
int 21h
lea dx,drop3
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
;----------------------------------------------------------
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters black
lea dx,a_fg_black
int 21h
; red background for characters
lea dx,a_bg_white 
int 21h
; print texts
lea dx,app3
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_black 
int 21h
lea dx,drop 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters black
lea dx,a_fg_black
int 21h
; red background for characters
lea dx,a_bg_white 
int 21h
; print texts
lea dx,app4
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_black 
int 21h
lea dx,drop 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters black
lea dx,a_fg_black
int 21h
; red background for characters
lea dx,a_bg_white 
int 21h
; print texts
lea dx,app5
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_black 
int 21h
lea dx,drop 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters black
lea dx,a_fg_black
int 21h
; red background for characters
lea dx,a_bg_white 
int 21h
; print texts
lea dx,app6
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_black 
int 21h
lea dx,drop 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters black
lea dx,a_fg_black
int 21h
; red background for characters
lea dx,a_bg_white 
int 21h
; print texts
lea dx,app7
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_black 
int 21h
lea dx,drop 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters black
lea dx,a_fg_black
int 21h
; red background for characters
lea dx,a_bg_white 
int 21h
; print texts
lea dx,app8
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_black 
int 21h
lea dx,drop 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
;----------------------------------------------------------
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters black
lea dx,a_fg_black
int 21h
; red background for characters
lea dx,a_bg_white 
int 21h
; print texts
lea dx,app9 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_black 
int 21h
lea dx,drop2 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_red
int 21h
; make the characters white
lea dx,a_fg_white
int 21h
lea dx,drop3
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters black
lea dx,a_fg_black
int 21h
; red background for characters
lea dx,a_bg_white 
int 21h
; print texts
lea dx,app10 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_black 
int 21h
lea dx,drop2 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; red background for characters
lea dx,a_bg_red
int 21h
; make the characters white
lea dx,a_fg_white
int 21h
lea dx,drop3
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
;------------------------------------------------------------
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters black
lea dx,a_fg_black
int 21h
; red background for characters
lea dx,a_bg_white 
int 21h
; print texts
lea dx,whitespace 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters yellow
lea dx,a_fg_yellow
int 21h
; red background for characters
lea dx,a_bg_red
int 21h
; print texts
lea dx,app11 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters white
lea dx,a_fg_black
int 21h
; red background for characters
lea dx,a_bg_white 
int 21h
; print texts
lea dx,whitespace 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters white
lea dx,a_fg_black
int 21h
; red background for characters
lea dx,a_bg_white 
int 21h
; print texts
lea dx,app12 
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
; Bright colored characters
lea dx,a_bright 
int 21h
; make the characters white
lea dx,a_fg_yellow
int 21h
;blink
lea dx, a_blink
int 21h
; print texts
lea dx,app13
int 21h
; reset to defaults
lea dx,a_reset 
int 21h
;----------------------------------------------------------
; reset to defaults
lea dx,a_reset 
int 21h
NewLine:
mov dl, 0Dh ; Carriage return
mov ah, 02h
int 21h
mov dl, 0Ah ; Line feed
int 21h
ret
.exit
end ProgramStart
