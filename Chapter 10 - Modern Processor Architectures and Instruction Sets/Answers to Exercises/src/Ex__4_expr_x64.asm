.code
includelib libcmt.lib
includelib legacy_stdio_definitions.lib

extern printf:near
extern exit:near

public main
main proc
    ; Reserve stack space
    sub     rsp, 40
    
    ; Print the leading output string
    lea     rcx, msg1
    call    printf

    ; Compute [(129 – 66) * (445 + 136)] / 3
    mov     eax, 129
    sub     eax, 66
    mov     ebx, 445
    add     ebx, 136
    mul     bx
    mov     bx, 3
    div     bx

    ; Print the most significant byte
    push    rax
    mov     bl, ah
    and     ebx, 0ffh
    call    print_byte

    ; Print the least significant byte
    pop     rbx
    and     ebx, 0ffh
    call    print_byte

    ; Print the trailing output string    
    lea     rcx, msg2
    call    printf

    ; Exit the program with status 0
    xor     rcx, rcx
    call    exit
main endp

; Pass the byte to be printed in ebx
print_byte proc
    ; x64 function prologue
    sub     rsp, 40
    
    ; Use the C library printf function
    mov     rdx, rbx
    lea     rcx, fmt_str
    call    printf

    ; x64 function epilogue    
    add     rsp, 40

    ret
print_byte endp

.data
fmt_str db "%02X", 0
msg1    db "[(129 - 66) * (445 + 136)] / 3 = ", 0
msg2    db "h", 9

end
