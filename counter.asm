.model small
.stack 100h
.DATA 

     
    a db ?
            
.code

 main proc  
    mov ah,1
    int 21h 
    mov a,al
    
    mov ah,2
    mov dl,0DH
    int 21h
    mov dl,0AH
    int 21h 
    
    mov cx,5 
    
    print:
    dec cx
    
    
    mov ah,2
    mov dl,a
    int 21h  
    
    jnz print
                
    mov ah,4ch
    int 21h
    
   main endp
 end main 
 
    mov ah,2
    mov dl,0DH
    int 21h
    mov dl,0AH
    int 21h 