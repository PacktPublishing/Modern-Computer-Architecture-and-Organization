.text
.global _start

_start:
    // Print the message to file 1 (stdout) with syscall 64
    mov     x0, #1
    ldr     x1, =msg
    mov     x2, #msg_len
    mov     x8, #64
    svc     0

    // Exit the program with syscall 93, returning status 0
    mov     x0, #0
    mov     x8, #93
    svc     0
    
.data
msg:
    .ascii      "Hello, Computer Architect!"
msg_len = . - msg
