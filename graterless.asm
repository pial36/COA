org 100h
.DATA 

     
   msg db "Enter a Character: $"
   msg1 db "Numer is Greter than 5$"
   msg2 db "Numer is less than 5$"
   msg3 db "Numer is equal to 5$"
     
     a db ?
            
.code 
 main proc
    mov ax,@data
    mov ds, ax 
    
    mov ah ,9 
    lea dx, msg 
    int 21h 
    
    mov ah, 1
    int 21h
    mov a,al
    cmp a,'5'
    
          mov ah,2
    mov dl,0DH
    int 21h
    mov dl,0AH
    int 21h 
    
    
    jg Greater
    jl less
    je Equal
    
    Greater:
    
    mov ah,9 
    lea dx, msg1
    int 21h
    jmp exit
    
        mov ah,2
    mov dl,0DH
    int 21h
    mov dl,0AH
    int 21h 
    
     less:
      mov ah,9 
    lea dx, msg2
    int 21h
    jmp exit
    
          mov ah,2
    mov dl,0DH
    int 21h
    mov dl,0AH
    int 21h
    
      Equal:
      mov ah,9 
    lea dx, msg3
    int 21h
    jmp exit 
    
    exit:
    