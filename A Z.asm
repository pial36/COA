.model small
.stack 100h
.data
    message db  "Enter a character: $"
    valid_message db  "A $"
    error_message db "Error$"

.code
start:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, message
    int 21h     

    mov ah, 01h
    int 21h     

    cmp al, 'A'
    jl PrintError  

    cmp al, 'Z'
    jg PrintError  

    
    mov ah, 09h
    lea dx, valid_message
    int 21h

    
    mov ah, 02h
    mov dl, al
    int 21h

    jmp Exit

PrintError:
    ;
    mov ah, 09h
    lea dx, error_message
    int 21h

Exit:
    
    mov ah, 4Ch
    int 21h