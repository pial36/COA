.model samll 
.stack 100h

.data
   msg db "Enter 1st Input :$"   
    msg1 db "Enter 2nd Input :$" 
    msg2 db "Enter 3rd Input :$"
     a db ?
     b db ?
     c db ? 
    msg4 db "1st Iput was:$"
    msg5 db "2nd Iput was:$"
    msg6 db "3rd Iput was:$" 
.code 
   mov ax, @data ;Massage Print
   mov ds, ax
   mov ah , 9
   lea dx , msg 
   int 21h  
    
   mov ah,1   ;User Input
   int 21h
   mov a,al
    
   mov ah ,2          ;New Line 
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 
    
    
   mov ax, @data 
   mov ds, ax
   mov ah , 9
   lea dx , msg1 
   int 21h  
    
   mov ah,1 
   int 21h
   mov b,al
    
   mov ah ,2 
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 
    
   mov ax, @data 
   mov ds, ax
   mov ah , 9
   lea dx , msg2 
   int 21h  
    
   mov ah,1 
   int 21h
   mov c,al
    
   mov ah ,2 
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 
    
    
   mov ax, @data 
   mov ds, ax
   mov ah , 9
   lea dx , msg4 
   int 21h  
    
   mov ah,2        ; Output Print
   mov dl,a
   int 21h
    
    
   mov ah ,2 
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h
    
   mov ax, @data 
   mov ds, ax
   mov ah , 9
   lea dx , msg5 
   int 21h  
    
   mov ah,2 
   mov dl,b
   int 21h
    
    
   mov ah ,2 
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 
    
    
   mov ax, @data 
   mov ds, ax
   mov ah , 9
   lea dx , msg6 
   int 21h  
    
   mov ah,2 
   mov dl,c
   int 21h
    
    
   mov ah ,2 
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h  
    
