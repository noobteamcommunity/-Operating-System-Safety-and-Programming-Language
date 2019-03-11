.model small
.stack 100h
.data
    msg1 db "Moi ban nhap 1 ky tu: $"
    msg2 db 13,10,"Ky tu ban vua nhap la: $"
    c db ?
.code
    proc main
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg1
        int 21h
        
        mov ah,1
        int 21h
        
        mov c,al
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov dl,c
        
        mov ah,2
        int 21h
        
        mov ah,4ch
        int 21h
    main endp
end main