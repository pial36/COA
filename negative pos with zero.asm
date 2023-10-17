.model stack 
.stack 100h 

.data
msg1 db "Negative$"
msg2 db "Positive$"
msg3 db "zero$" 

.code
main proc
    
    mov ax,@data 
    mov ds,ax 
    mov ah,1
    int 21h
    mov bl,al
    cmp bl, '-'
    je input 
    cmp bl,'0'
    jg positive 
    mov ah,9
    lea dx, msg3
    int 21h 
    jmp exit 
    input:
    mov ah,1
    int 21h
    mov ah,9
    lea dx ,msg1
    int 21h
    jmp exit
    positive:
    mov ah,9 
    lea dx,msg2
    int 21h 
    jmp exit
    Exit:                        