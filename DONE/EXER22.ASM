; I DON'T KNOW HOW TO PRINT MULTIPLE USER INPUT STRINGS IN ONE LINE HUHU ;-;
; Filename: EXER22.ASM
; Programmer Name: CHAZ ZYL G. LLAGUNO
; Date: 09 / 19 / 2024
; Description: Create a College Enrollment Form. Get user input. Display a summary 
; of the inputs. Include the necessary documentation as comments in 
; your code.
.MODEL small
.STACK 100h
.DATA
; Title
header DB 'Cebu Institute of Technology - University', 0Dh, 0Ah, '$'
; Enrollment Form prompt
prompt DB 'STUDENT ENROLLMENT FORM', 0Dh, 0Ah, '$'
prompt2 DB 'Please enter the following information:', 0Dh, 0Ah, '$'
; User input prompts
idPrompt DB 'Student ID Number: $'
firstNamePrompt DB 'First Name: $'
middleNamePrompt DB 'Middle Name: $'
lastNamePrompt DB 'Last Name: $'
addressPrompt DB 'Address: $'
coursePrompt DB 'Course: $'
yearPrompt DB 'Year: $'
bMonthPrompt DB 'Birthday Month: $'
bDayPrompt DB 'Birthday Day: $'
bYearPrompt DB 'Birthday Year: $'
emailPrompt DB 'Email Address: $'
comma DB ',$'

; Summary
summary DB 'SUMMARY', 0Dh, 0Ah, '$'
checkMsg DB 'Please check if all information are correct.', 0Dh, 0Ah, '$'
thankYou DB 'Thank you for enrolling at CIT-U.', 0Dh, 0Ah, '$'
copyright DB 'Copyright 2024', 0Dh, 0Ah, '$'
programmer DB 'Programmer: CHAZ ZYL G. LLAGUNO', 0Dh, 0Ah, '$'
fullname DB 'Fullname: $'
courseYr DB 'Course & Year: $'
birthday DB 'Birthday: $'

; User input 
studentID DB 50 DUP ('$')
firstName DB 50 DUP ('$')
middleName DB 50 DUP ('$')
lastName DB 50 DUP ('$')
address DB 10000 DUP ('$')
course DB 50 DUP ('$')
year DB 50 DUP ('$')
bMonth DB 50 DUP ('$')
bDay DB 50 DUP ('$')
bYear DB 50 DUP ('$')
email DB 50 DUP ('$')

.DATA
head1 DB 'FILENAME: EXER22.ASM$'
head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
head3 DB 'Description: College Enrollment Form$'
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

; Display title
mov dx, OFFSET header
mov ah, 09h
int 21h
; Display enrollment form prompt
mov dx, OFFSET prompt
mov ah, 09h
int 21h
call NewLine
mov dx, OFFSET prompt2
mov ah, 09h
int 21h
; Input Student ID
LEA DX, idPrompt
MOV AH, 09h
INT 21h
LEA DX, studentID
MOV AH, 0Ah
INT 21h
call NewLine
; Input First Name
LEA DX, firstNamePrompt
MOV AH, 09h
INT 21h
LEA DX, firstName
MOV AH, 0Ah
INT 21h
; Input Middle Name
call NewLine
LEA DX, middleNamePrompt
MOV AH, 09h
INT 21h
LEA DX, middleName
MOV AH, 0Ah
INT 21h
; Input Last Name
call NewLine
LEA DX, lastNamePrompt
MOV AH, 09h
INT 21h
LEA DX, lastName
MOV AH, 0Ah
INT 21h
; Input Address
call NewLine
LEA DX, addressPrompt
MOV AH, 09h
INT 21h
LEA DX, address
MOV AH, 0Ah
INT 21h
; Input Course
call NewLine
LEA DX, coursePrompt
MOV AH, 09h
INT 21h
LEA DX, course
MOV AH, 0Ah
INT 21h
; Input Year
call NewLine
LEA DX, yearPrompt
MOV AH, 09h
INT 21h
LEA DX, year
MOV AH, 0Ah
INT 21h
; Input Birthday Month
call NewLine
LEA DX, bMonthPrompt
MOV AH, 09h
INT 21h
LEA DX, bMonth
MOV AH, 0Ah
INT 21h
; Input Birthday Day
call NewLine
LEA DX, bDayPrompt
MOV AH, 09h
INT 21h
LEA DX, bDay
MOV AH, 0Ah
INT 21h
; Input Birthday Year
call NewLine
LEA DX, bYearPrompt
MOV AH, 09h
INT 21h
LEA DX, bYear
MOV AH, 0Ah
INT 21h
; Input Email Address
call NewLine
LEA DX, emailPrompt
MOV AH, 09h
INT 21h
LEA DX, email
MOV AH, 0Ah
INT 21h
; Display Summary
call DoubleLine
mov dx, OFFSET summary
mov ah, 09h
int 21h
mov dx, OFFSET checkMsg
mov ah, 09h
int 21h
; Print collected data
call PrintSummary
; Thank you message
call NewLine
mov dx, OFFSET thankYou
mov ah, 09h
int 21h
; Copyright and programmer details
mov dx, OFFSET copyright
mov ah, 09h
int 21h
mov dx, OFFSET programmer
mov ah, 09h
int 21h
; Terminate program
mov ah, 4Ch
int 21h
DoubleLine:
call NewLine
call NewLine
ret
NewLine:
mov dl, 0Dh ; Carriage return
mov ah, 02h
int 21h
mov dl, 0Ah ; Line feed
int 21h
ret

; Subroutine to print summary of inputs

PrintSummary:
call NewLine
; Print Student ID Prompt
LEA DX, idPrompt
MOV AH, 09h ; DOS function to display a string
INT 21h
; Display the entered Student ID
LEA DX, studentID + 2 ; Skip the first two bytes (length and max length)
MOV AH, 09h ; DOS function to display a string
INT 21h
call NewLine

; Print Full Name
LEA DX, fullname
MOV AH, 09h
INT 21h

xor bx, bx
mov bl, lastName[1]
mov lastName[bx+2], '$'
lea dx, lastName + 2
mov ah, 09h
int 21h

LEA DX, comma
MOV AH, 09h
INT 21h

mov ah, 02h
mov dl, ' '
int 21h

xor bx, bx
mov bl, firstName[1]
mov firstName[bx+2], '$'
lea dx, firstName + 2
mov ah, 09h
int 21h

mov ah, 02h
mov dl, ' '
int 21h

xor bx, bx
mov bl, middleName[1]
mov middleName[bx+2], '$'
lea dx, middleName + 2
mov ah, 09h
int 21h

call NewLine

; Print Address
LEA DX, addressPrompt
MOV AH, 09h
INT 21h
LEA DX, address + 2
MOV AH, 09h
INT 21h
call NewLine

; Print Course and Year
LEA DX, courseYr
MOV AH, 09h
INT 21h

xor bx, bx
mov bl, course[1]
mov course[bx+2], '$'
lea dx, course + 2
mov ah, 09h
int 21h

mov ah, 02h
mov dl, ' '
int 21h

xor bx, bx
mov bl, year[1]
mov year[bx+2], '$'
lea dx, year + 2
mov ah, 09h
int 21h

call NewLine

; Print Birthday
LEA DX, birthday
MOV AH, 09h
INT 21h

xor bx, bx
mov bl, bMonth[1]
mov bMonth[bx+2], '$'
lea dx, bMonth + 2
mov ah, 09h
int 21h


mov ah, 02h
mov dl, ' '
int 21h

xor bx, bx
mov bl, bDay[1]
mov bDay[bx+2], '$'
lea dx, bDay + 2
mov ah, 09h
int 21h

LEA DX, comma
MOV AH, 09h
INT 21h

mov ah, 02h
mov dl, ' '
int 21h

xor bx, bx
mov bl, bYear[1]
mov bYear[bx+2], '$'
lea dx, bYear + 2
mov ah, 09h
int 21h

call NewLine

; Print Email Address
LEA DX, emailPrompt
MOV AH, 09h
INT 21h
LEA DX, email + 2
MOV AH, 09h
INT 21h
call NewLine
ret
END ProgramStart

