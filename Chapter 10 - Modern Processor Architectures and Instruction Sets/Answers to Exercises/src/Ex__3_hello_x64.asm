.code
includelib libcmt.lib
includelib legacy_stdio_definitions.lib

extern printf:near
extern exit:near

public main
main proc
    ; Reserve stack space
    sub     rsp, 40
    
    ; Print the message
    lea     rcx, message
    call    printf
    
    ; Exit the program with status 0
    xor     rcx, rcx
    call    exit
main endp

.data
message db "Hello, Computer Architect!",0

end
