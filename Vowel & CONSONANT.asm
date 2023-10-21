.model small
.stack 100h

.data
msg1 db "VOWEL$"
msg2 db "CONSONANT$"

.code
main proc
    mov ax, @data
    mov ds, ax
    mov ah, 1
    int 21h

    ; Check if AL is an uppercase letter
    mov bl, 'A'
    cmp al, bl
    jl not_uppercase
    mov bl, 'Z'
    cmp al, bl
    jg not_uppercase

    ; AL is an uppercase letter
    ; Check if it's a vowel
    cmp al, 'A'
    je vowel
    cmp al, 'E'
    je vowel
    cmp al, 'I'
    je vowel
    cmp al, 'O'
    je vowel
    cmp al, 'U'
    je vowel 
    
    
      mov ah ,2 
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 

    ; AL is an uppercase letter, but not a vowel
    mov ah, 9
    lea dx, msg2
    int 21h
    jmp exit

not_uppercase:
    ; AL is not an uppercase letter
    jmp exit

vowel: 
       mov ah ,2 
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 


    ; AL is an uppercase vowel
    mov ah, 9
    lea dx, msg1
    int 21h

exit:
    ; Your exit code here

    ; Terminate program
    mov ah, 4Ch
    int 21h

main endp
end main
