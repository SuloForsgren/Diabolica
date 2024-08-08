print_string:
    push bx

    mov ah, 0x0E
    mov al, [bx]

print_next_char:
    cmp al, 0
    je done
    int 0x10
    inc bx
    mov al, [bx]
    jmp print_next_char

done:
    pop bx
    ret
