.text
.global _start

_start:
    // Print the leading output string
    ldr     x1, =msg1
    mov     x2, #msg1_len
    bl      print_string

    // Compute [(129 – 66) * (445 + 136)] / 3
    mov     x0, #129
    sub     x0, x0, #66
    mov     x1, #445
    add     x1, x1, #136
    mul     x0, x1, x0
    mov     x1, #3
    udiv    x0, x0, x1

    // Print the upper byte of the result
    mov     x19, x0
    lsr     x0, x0, #8
    bl      print_byte

    // Print the lower byte of the result    
    mov     x0, x19
    bl      print_byte
    
    // Print the trailng output string
    ldr     x1, =msg2
    mov     x2, #msg2_len
    bl      print_string
    
    // Exit the program with syscall 93, returning status 0
    mov     x0, #0
    mov     x8, #93
    svc     0

// Print a string; x1=string address, x2=string length
print_string:
    mov     x0, #1
    mov     x8, #64
    svc     0
    ret     x30

// Convert the low 4 bits of x0 to an ascii character in x0
nibble2ascii:
    and     x0, x0, #0xF
    cmp     x0, #10
    bmi     lt10
    
    add     x0, x0, #('A' - 10)
    b       done

lt10:
    add     x0, x0, #'0'

done:
    ret     x30

// Print a byte in hex    
print_byte:
    mov     x21, x30
    mov     x20, x0
    lsr     x0, x0, #4
    bl      nibble2ascii
    ldr     x1, =bytes
    strb    w0, [x1], #1

    mov     x0, x20
    bl      nibble2ascii
    strb    w0, [x1]

    ldr     x1, =bytes
    mov     x2, #2
    bl      print_string
    
    mov     x30, x21
    ret     x30
        
.data
msg1:
    .ascii  "[(129 - 66) * (445 + 136)] / 3 = "
msg1_len = . - msg1

bytes:
    .ascii  "??"

msg2:
    .ascii  "h"
msg2_len = . - msg2
