.386
.model FLAT,C
.stack 400h

.code
includelib libcmt.lib
includelib legacy_stdio_definitions.lib

extern printf:near
extern exit:near

public main
main proc
    ; Print the leading output string
    push    offset msg1
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
    push    eax
    mov     bl, ah
    call    print_byte

    ; Print the least significant byte
    pop     ebx
    call    print_byte

    ; Print the trailing output string    
    push    offset msg2
    call    printf

    push    0
    call    exit
main endp

; Pass the byte to be printed in ebx
print_byte proc
    ; x86 function prologue
    push    ebp
    mov     ebp, esp
    
    ; Use the C library printf function
    and     ebx, 0ffh
    push    ebx
    push    offset fmt_str
    call    printf

    ; x86 function epilogue    
    mov     esp, ebp
    pop     ebp
    ret
print_byte endp

.data
fmt_str db "%02X", 0
msg1    db "[(129 - 66) * (445 + 136)] / 3 = ", 0
msg2    db "h", 9

end
