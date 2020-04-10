.text
.global _start

_start:
    // Print the leading output string
    ldr     r1, =msg1
    mov     r2, #msg1_len
    bl      print_string

    // Compute [(129 – 66) * (445 + 136)] / 3
    mov     r0, #129
    sub     r0, r0, #66
    ldr     r1, =#445
    add     r1, r1, #136
    mul     r0, r1, r0
    mov     r1, #3
    udiv    r0, r0, r1

    // Print the upper byte of the result
    push    {r0}
    lsr     r0, r0, #8
    bl      print_byte

    // Print the lower byte of the result    
    pop     {r0}
    bl      print_byte
    
    // Print the trailng output string
    ldr     r1, =msg2
    mov     r2, #msg2_len
    bl      print_string
    
    // Exit the program with syscall 1, returning status 0
    mov     r0, #0
    mov     r7, #1
    svc     0

// Print a string; r1=string address, r2=string length
print_string:
    mov     r0, #1
    mov     r7, #4
    svc     0
    mov     pc, lr

// Convert the low 4 bits of r0 to an ascii character in r0
nibble2ascii:
    and     r0, #0xF
    cmp     r0, #10
    addpl   r0, r0, #('A' - 10)
    addmi   r0, r0, #'0'
    mov     pc, lr

// Print a byte in hex    
print_byte:
    push    {lr}
    push    {r0}
    lsr     r0, r0, #4
    bl      nibble2ascii
    ldr     r1, =bytes
    strb    r0, [r1], #1

    pop     {r0}
    bl      nibble2ascii
    strb    r0, [r1]

    ldr     r1, =bytes
    mov     r2, #2
    bl      print_string
    
    pop     {lr}
    mov     pc, lr
        
.data
msg1:
    .ascii  "[(129 - 66) * (445 + 136)] / 3 = "
msg1_len = . - msg1

bytes:
    .ascii  "??"

msg2:
    .ascii  "h"
msg2_len = . - msg2
