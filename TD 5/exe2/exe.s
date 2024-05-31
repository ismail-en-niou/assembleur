    data segement
        n dw 13 
    ends
    code segement
    start :
        mov ax , data
        mov ds , ax

        mov ax , n
        mov cx , 2

        boucle :
            div cx 
            cmp dx , 0 
            jne suivant 
            mov dx ,ax 
            mov dx , 48
            mov ah , 02h
            int 21 
        suivant :
            mov ax , n 
            mov dx , 0 
            cmp cx , n
            je fin 
            inc cx 
            jmp boucle
        fin :
            mov ah , 4ch
            int 21h
        ends 
        end start 