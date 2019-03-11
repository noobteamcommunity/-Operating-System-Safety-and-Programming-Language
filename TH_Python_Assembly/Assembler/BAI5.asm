.model small
.stack 100h
.data
    msg1 db "Nhap so a = $"
    msg2 db 13,10,"Nhap so b = $"
    msg3 db 13,10,"Tong a + b = $"
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg1
        int 21h
        
        mov ah,1
        int 21h
        push ax
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,1
        int 21h
        
        pop cx
        add cl,al
        sub cl,30h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,2
        mov dl,cl
        int 21h
        
        mov ax,4ch
        int 21h
    main endp
end main