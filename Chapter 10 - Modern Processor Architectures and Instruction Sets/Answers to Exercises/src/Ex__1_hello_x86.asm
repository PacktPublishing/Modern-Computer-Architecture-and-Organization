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
    push    offset message
    call    printf
    
    push    0
    call    exit
main endp

.data
message db "Hello, Computer Architect!",0

end
