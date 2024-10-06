.model small
.stack 100h
.data
    message DB 'College of Computer Studies', 0  ; The message string
    color   DB 0Eh                               ; Light yellow on black background

.code
start:
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    ; Set video segment for text mode (0xB800)
    mov ax, 0B800h     ; Video memory segment
    mov es, ax         ; Set ES to video memory segment

    ; Initialize DI for video memory start (top-left corner)
    mov di, 0          ; Video memory starts at offset 0 (top-left corner)

    ; Load the message into SI
    lea si, message    ; Load address of message into SI

display_loop:
    lodsb              ; Load next byte from message (SI) into AL
    cmp al, 0          ; Check if null terminator (end of string)
    je end_display     ; If so, end the loop

    ; Write character (AL) to video memory at ES:DI
    mov es:[di], al    ; Write character
    inc di             ; Move to the next memory location

    ; Write color attribute (0Eh for light yellow) to the next memory location
    mov al, color      ; Load color attribute (light yellow on black)
    mov es:[di], al    ; Write color attribute
    inc di             ; Move to the next character position (each cell is 2 bytes)

    jmp display_loop   ; Continue loop for the next character

end_display:
    ; End program
    mov ah, 4Ch        ; DOS interrupt to terminate
    int 21h
end start
