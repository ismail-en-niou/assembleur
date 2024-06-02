data segement
    n dw  2021 
ends
stack segement
    dw 128 dup(0)
ends
code segment 
    mov ax , data 
    mov ds , ax

    mov ax , stack
    mov ss , ax

    