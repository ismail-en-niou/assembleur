code segement 
    start
    mov ax , data 
    mov ds , ax 

    mov cx , 0 
    mov bx , 256

    boucle :
        inc cx ;cx++

        mov ax , 02h
        mov dx  , cx
        int 21h

        cmp cx , bx
        jl boucle 

    mov ax , 4c00h
    int 21