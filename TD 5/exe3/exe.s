data segement
    n  dw 13 
    msg1 dw 'le nombre est premier $'
    msg2 dw 'le nombre nonpremier $'
end 
code segement
    start
    
    mov ax , data 
    mov ds , ax
    

    mov cx , 12 
    mov bx , 2
    mov ax , n 

    boucle:
        div ax 
        cmp dx , 0 
        je aff2
        jne aff1
        cmp bx , n
        je fin 
        jl boucle
    aff2:
        mov ax 0900h
        mov dx , ofsset msg2
        int 21h 
        jmp fin
    aff1:
        mov ax 0900h
        mov dx , ofsset msg1
        int 21h 
        jmp fin
    fin: 
        mov ax , 4c00h
        int 21h
    ends
    end start
