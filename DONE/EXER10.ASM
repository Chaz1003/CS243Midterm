; EXER10.ASM
; COLLEGE ENROLLMENT FORM
; CHAZ ZYL G. LLAGUNO
; Date: September 5, 2024

.model small
.data
    header1 DB 'FILENAME: EXER10.ASM$'
    head2 DB 'Programmer Name: CHAZ ZYL G. LLAGUNO$'
    header3 DB 'Description: COLLEGE ENROLLMENT FORM$'
    header4 DB 'DATE: 09 / 05 / 2024$'
    newline DB 0Dh,0Ah, '$' ; New line

    header db       '=======================College Enrollment Form========================$'
    header2 db      '=============CEBU INSTITUTE OF TECHNOLOGY - UNIVERSITY================$'
    fullname db     'First Name     :               Last Name       :      $'
    address db      'Street Address :                                       $'
    address2 db     'City           :               State/Province  :      $'
    bdate db        'Month          :               Day             :           Year:      $'
    gender db       'Male           :               Female          :           N/A:    $'
    studnumber db   'Student Number :                                       $'
    studemail db    'Student Email  :                                       $'
    company db      'Company        :                                       $'
    courses db      'Courses        :$'
    courses1 db     'English 101    :               English 102     :           Creative Writing 1:    $'
    courses2 db     'History 101    :               Math 102        :           Creative Writing 2:    $'
    courses3 db     'Math 101       :               Windows 8       :           History 102       :  $'
    comments db     'Comments       :                                       $'
    date_sign db    'Date           :               Signature       :          $'
.code
.startup

main1:
    
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
mov dx, OFFSET head2
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

    mov ah, 9
    mov dx,offset header
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset header2
    int 21h



    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset fullname
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset address
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset address2
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset bdate
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset gender
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset studnumber
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset studemail
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset company
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset courses
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset courses1
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset courses2
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset courses3
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset comments
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    mov ah, 9
    mov dx,offset date_sign
    int 21h

    mov ah,02h
    mov cl,0Ah
    mov dl,cl
    int 21h

    .exit
    end
