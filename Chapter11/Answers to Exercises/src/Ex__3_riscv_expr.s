.section .text
.global main

main:
    # Reserve stack space and save the return address
    addi    sp, sp, -16
    sd      ra, 0(sp)

    # Print the leading output string
    la      a0, msg1
    jal     ra, puts

    # Compute [(129 – 66) * (445 + 136)] / 3
    addi    a0, zero, 129
    addi    a0, a0, -66
    addi    a1, zero, 445
    add     a1, a1, 136
    mul     a0, a1, a0
    addi    a1, zero, 3
    divu    a0, a0, a1

    # Print the upper byte of the result
    sw      a0, 8(sp)
    srl     a0, a0, 8
    jal     ra, print_byte

    # Print the lower byte of the result
    lw      a0, 8(sp)
    jal     ra, print_byte

    # Print the trailng output string
    la      a0, msg2
    jal     ra, puts

    # Restore the return address and sp
    ld      ra, 0(sp)
    addi    sp, sp, 16

    # Set the exit code to zero and return to caller
    addi    a0, zero, 0
    ret

# Convert the low 4 bits of a0 to an ascii character in a0
nibble2ascii:
    # Reserve stack space and save the return address
    addi    sp, sp, -16
    sd      ra, 0(sp)

    and     a0, a0, 0xF
    sltu    t0, a0, 10
    bne     t0, zero, lt10

    add     a0, a0, ('A' - 10)
    j       done

lt10:
    add     a0, a0, '0'

done:
    ld      ra, 0(sp)
    addi    sp, sp, 16
    ret

# Print a byte in hex
print_byte:
    # Reserve stack space and save the return address
    addi    sp, sp, -16
    sd      ra, 0(sp)

    addi    t1, a0, 0
    srl     a0, t1, 4
    jal     ra, nibble2ascii
    la      t3, bytes
    sb      a0, 0(t3)

    addi    a0, t1, 0
    jal     nibble2ascii
    sb      a0, 1(t3)

    la      a0, bytes
    jal     ra, puts

    ld      ra, 0(sp)
    addi    sp, sp, 16
    ret

.section .data
msg1:
    .asciz  "[(129 - 66) * (445 + 136)] / 3 = "

bytes:
    .asciz  "??"

msg2:
    .asciz  "h"
