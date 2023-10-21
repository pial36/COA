.model small
.stack 100h

.data
msg1 db "SMALL LETTER$"
msg2 db "CAPITAL LETTER$"
msg3 db "INVALID$"

.code
main proc
    mov ax, @data
    mov ds, ax
    mov ah, 1
    int 21h

    ; Check if AL is a small letter
    mov bl, 'a'
    cmp al, bl
    jl not_small
    mov bl, 'z'
    cmp al, bl
    jg not_small 
    
    mov ah ,2 
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 

    ; AL is a small letter
    mov ah, 9
    lea dx, msg1
    int 21h
    jmp exit

not_small:
    ; Check if AL is a capital letter
    mov bl, 'A'
    cmp al, bl
    jl invalid
    mov bl, 'Z'
    cmp al, bl
    jg invalid
    
    
    mov ah ,2 
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 

    ; AL is a capital letter
    mov ah, 9
    lea dx, msg2
    int 21h
    jmp exit 
    
    mov ah ,2 
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 

invalid:

      mov ah ,2 
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 

    ; AL is neither small nor capital letter
    mov ah, 9
    lea dx, msg3
    int 21h

exit:
    ; Your exit code here

    ; Terminate program
    mov ah, 4Ch
    int 21h

main endp
end main
