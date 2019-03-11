.model small
.stack 100h
.data
    msg1 db "Moi ban nhap 1 ky tu: $"
    msg2 db 13,10,"Ky tu dung truoc la: $"
    msg3 db 13,10,"Ky tu dung sau la: $"
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
        dec dl
        
        mov ah,2
        int 21h 
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov dl,c
        inc dl
        
        mov ah,2
        int 21h
        
        mov ah,4ch
        int 21h
    main endp
end main