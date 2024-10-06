; a. Filename: EXAM3.ASM
; b. CS243 Lab Hands-on Exam No. 3
; c. First Semester SY 2024-2025
; d. Student Name: CHAZ ZYL G. LLAGUNO
; e. Date Finished: 10 / 03 / 2024

.MODEL small
.STACK 100h
.DATA
; Title
header DB ' VOTER''S REGISTRATION FORM', 0Dh, 0Ah, '$'
header2 DB ' Created by: CHAZ ZYL G. LLAGUNO', 0Dh, 0Ah, '$'
header3 DB ' Date: 10 / 03 / 2024', 0Dh, 0Ah, '$'
header4 DB ' Please enter the following data:', 0Dh, 0Ah, '$'

; Enrollment Form promp
; User input prompts
firstNamePrompt DB ' First Name: $'
middleNamePrompt DB ' Middle Name: $'
lastNamePrompt DB ' Family Name: $'
genderPrompt DB ' Gender: $'
bdayLbl DB ' Birthday $'
bMonthPrompt DB '    Month: $'
bDayPrompt DB '    Day: $'
bYearPrompt DB '    Year: $'
addressLbl DB ' Address $'
houseNumPrompt DB '    House Number: $'
streetPrompt DB '    Street: $'
brgyPrompt DB '    Barangay: $'
cityPrompt DB '    City: $'
provPrompt DB '    Province: $'
educBgLbl DB ' Educational Background $'
elemLbl DB '    Elementary $'
elemName DB '       Name of School: $'
elemYear DB '       Year Graduated: $'
jhsLbl DB '    Junior High School $'
jhsName DB '       Name of School: $'
jhsYear DB '       Year Graduated: $'
shsLbl DB '    Senior High School $'
shsName DB '       Name of School: $'
shsYear DB '       Year Graduated: $'
collegeLbl DB '    College $'
collegeName DB '       Name of School: $'
collegecourse DB '       Course: $'
collegeYear DB '       Year Graduated: $'

; Summary
summary DB ' SUMMARY OF INFORMATION', 0Dh, 0Ah, '$'
checkMsg DB ' Please verify if all entries are correct.', 0Dh, 0Ah, '$'
reminderMsg DB ' Vote wisely!', 0Dh, 0Ah, '$'
thankYou DB ' Thank you for registering.', 0Dh, 0Ah, '$'

; User input
firstName DB 50 DUP ('$')
middleName DB 50 DUP ('$')
lastName DB 50 DUP ('$')
gender DB 50 DUP ('$')
bMonth DB 50 DUP ('$')
bDay DB 50 DUP ('$')
bYear DB 50 DUP ('$')
houseNum DB 50 DUP ('$')
street DB 50 DUP ('$')
brgy DB 50 DUP ('$')
city DB 50 DUP ('$')
province DB 50 DUP ('$')
eName DB 50 DUP ('$')
eYear DB 50 DUP ('$')
jName DB 50 DUP ('$')
jYear DB 50 DUP ('$')
sName DB 50 DUP ('$')
sYear DB 50 DUP ('$')
cName DB 50 DUP ('$')
cCourse DB 50 DUP ('$')
cYear DB 50 DUP ('$')

.CODE
ProgramStart:
; Initialize the data segment
mov ax, @data
mov ds, ax

call PrintHeader

call NewLine

;Get Full Name
LEA DX, firstNamePrompt
MOV AH, 09h
INT 21h
LEA DX, firstName
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, middleNamePrompt
MOV AH, 09h
INT 21h
LEA DX, middleName
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, lastNamePrompt
MOV AH, 09h
INT 21h
LEA DX, lastName
MOV AH, 0Ah
INT 21h

; Get Gender
call NewLine
LEA DX, genderPrompt
MOV AH, 09h
INT 21h
LEA DX, gender
MOV AH, 0Ah
INT 21h

; Get Birthday
call NewLine
mov dx, OFFSET bdayLbl
mov ah, 09h
int 21h
call NewLine
LEA DX, bMonthPrompt
MOV AH, 09h
INT 21h
LEA DX, bMonth
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, bDayPrompt
MOV AH, 09h
INT 21h
LEA DX, bDay
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, bYearPrompt
MOV AH, 09h
INT 21h
LEA DX, bYear
MOV AH, 0Ah
INT 21h

; Get Address
call NewLine
mov dx, OFFSET addressLbl
mov ah, 09h
int 21h
call NewLine
LEA DX, houseNumPrompt
MOV AH, 09h
INT 21h
LEA DX, houseNum
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, streetPrompt
MOV AH, 09h
INT 21h
LEA DX, street
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, brgyPrompt
MOV AH, 09h
INT 21h
LEA DX, brgy
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, cityPrompt
MOV AH, 09h
INT 21h
LEA DX, city
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, provPrompt
MOV AH, 09h
INT 21h
LEA DX, province
MOV AH, 0Ah
INT 21h

; Get Educational Background
call NewLine
mov dx, OFFSET educBgLbl
mov ah, 09h
int 21h
; Elem
call NewLine
mov dx, OFFSET elemLbl
mov ah, 09h
int 21h
call NewLine
LEA DX, elemName
MOV AH, 09h
INT 21h
LEA DX, eName
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, elemYear
MOV AH, 09h
INT 21h
LEA DX, eYear
MOV AH, 0Ah
INT 21h
; Jhs
call NewLine
mov dx, OFFSET jhsLbl
mov ah, 09h
int 21h
call NewLine
LEA DX, jhsName
MOV AH, 09h
INT 21h
LEA DX, jName
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, jhsYear
MOV AH, 09h
INT 21h
LEA DX, jYear
MOV AH, 0Ah
INT 21h
; Shs
call NewLine
mov dx, OFFSET shsLbl
mov ah, 09h
int 21h
call NewLine
LEA DX, shsName
MOV AH, 09h
INT 21h
LEA DX, sName
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, shsYear
MOV AH, 09h
INT 21h
LEA DX, sYear
MOV AH, 0Ah
INT 21h

; College
call NewLine
mov dx, OFFSET collegeLbl
mov ah, 09h
int 21h
call NewLine
LEA DX, collegeName
MOV AH, 09h
INT 21h
LEA DX, cName
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, collegecourse
MOV AH, 09h
INT 21h
LEA DX, cCourse
MOV AH, 0Ah
INT 21h
call NewLine
LEA DX, collegeYear
MOV AH, 09h
INT 21h
LEA DX, cYear
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
mov dx, OFFSET reminderMsg
mov ah, 09h
int 21h
mov dx, OFFSET thankYou
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

; Print Full Name
LEA DX, firstNamePrompt
MOV AH, 09h
INT 21h
LEA DX, firstName + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, middleNamePrompt
MOV AH, 09h
INT 21h
LEA DX, middleName + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, lastNamePrompt
MOV AH, 09h
INT 21h
LEA DX, lastName + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, genderPrompt
MOV AH, 09h
INT 21h
LEA DX, gender + 2
MOV AH, 09h
INT 21h
call NewLine
; Print Birthday
mov dx, OFFSET bdayLbl
mov ah, 09h
int 21h
call NewLine
LEA DX, bMonthPrompt
MOV AH, 09h
INT 21h
LEA DX, bMonth + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, bDayPrompt
MOV AH, 09h
INT 21h
LEA DX, bDay + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, bYearPrompt
MOV AH, 09h
INT 21h
LEA DX, bYear + 2
MOV AH, 09h
INT 21h
call NewLine
; Print Address
mov dx, OFFSET addressLbl
mov ah, 09h
int 21h
call NewLine
LEA DX, houseNumPrompt
MOV AH, 09h
INT 21h
LEA DX, houseNum + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, streetPrompt
MOV AH, 09h
INT 21h
LEA DX, street + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, brgyPrompt
MOV AH, 09h
INT 21h
LEA DX, brgy + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, cityPrompt
MOV AH, 09h
INT 21h
LEA DX, city + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, provPrompt
MOV AH, 09h
INT 21h
LEA DX, province + 2
MOV AH, 09h
INT 21h
call NewLine
call Pause

; Educational Background
mov dx, OFFSET educBgLbl
mov ah, 09h
int 21h
call NewLine
mov dx, OFFSET elemLbl
mov ah, 09h
int 21h
call NewLine
LEA DX, elemName
MOV AH, 09h
INT 21h
LEA DX, eName + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, elemYear
MOV AH, 09h
INT 21h
LEA DX, eYear + 2
MOV AH, 09h
INT 21h
call NewLine

mov dx, OFFSET jhsLbl
mov ah, 09h
int 21h
call NewLine
LEA DX, jhsName
MOV AH, 09h
INT 21h
LEA DX, jName + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, jhsYear
MOV AH, 09h
INT 21h
LEA DX, jYear + 2
MOV AH, 09h
INT 21h
call NewLine

mov dx, OFFSET shsLbl
mov ah, 09h
int 21h
call NewLine
LEA DX, shsName
MOV AH, 09h
INT 21h
LEA DX, sName + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, shsYear
MOV AH, 09h
INT 21h
LEA DX, sYear + 2
MOV AH, 09h
INT 21h
call NewLine

mov dx, OFFSET collegeLbl
mov ah, 09h
int 21h
call NewLine
LEA DX, collegeName
MOV AH, 09h
INT 21h
LEA DX, cName + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, collegecourse
MOV AH, 09h
INT 21h
LEA DX, cCourse + 2
MOV AH, 09h
INT 21h
call NewLine
LEA DX, collegeYear
MOV AH, 09h
INT 21h
LEA DX, cYear + 2
MOV AH, 09h
INT 21h
call NewLine
ret

PrintHeader:
    ; Display title
    mov dx, OFFSET header
    mov ah, 09h
    int 21h
    ; Display enrollment form prompt
    mov dx, OFFSET header2
    mov ah, 09h
    int 21h
    mov dx, OFFSET header3
    mov ah, 09h
    int 21h
    call NewLine
    mov dx, OFFSET header4
    mov ah, 09h
    int 21h
ret

Pause:
    mov ah, 01h        ; Function to read a character
    int 21h            ; Wait for user input
    ret

END ProgramStart
