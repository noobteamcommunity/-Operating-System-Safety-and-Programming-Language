.model small
.stack 100h
.data
    msg1 db "Nhap vao 1 chuoi: $"
    msg2 db 13,10,"Chuoi thuong la: $"
    msg3 db 13,10,"Chuoi hoa la: $"
    s db 100,?,101 dup("$")
.code
    proc main
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg1
        int 21h
        
        mov ah,0Ah
        lea dx,s
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        call InChuoiThuong
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        call InChuoiHoa
        
        mov ah,4ch
        int 21h  
    main endp
        
        InChuoiThuong proc
            lea si,s+1
            xor cx,cx
            mov cl,[si]
            inc si
            lap1:
                mov ah,2
                mov dl,[si]
                cmp dl,'A'
                jb loop1
                cmp dl,'Z'
                ja loop1
                add dl,32
                loop1: inc si
                int 21h
                loop lap1
            ret
        InChuoiThuong endp
        
        InChuoiHoa proc
            lea si,s+1
            xor cx,cx
            mov cl,[si]
            inc si
            lap2:
                mov ah,2
                mov dl,[si]
                cmp dl,'a'
                jb loop2
                cmp dl,'z'
                ja loop2
                sub dl,32
                loop2: inc si
                int 21h
                loop lap2
            ret
        InChuoiHoa endp
end main