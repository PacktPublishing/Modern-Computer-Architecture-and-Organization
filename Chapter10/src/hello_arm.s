.text
.global _start

_start:
    // Print the message to file 1 (stdout) with syscall 4
    mov     r0, #1
    ldr     r1, =msg
    mov     r2, #msg_len
    mov     r7, #4
    svc     0

    // Exit the program with syscall 1, returning status 0
    mov     r0, #0
    mov     r7, #1
    svc     0
        
.data
msg:
    .ascii      "Hello, Computer Architect!"
msg_len = . - msg
