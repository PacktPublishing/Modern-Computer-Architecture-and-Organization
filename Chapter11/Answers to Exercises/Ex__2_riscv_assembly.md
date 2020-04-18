__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 11, Exercise 2

With the project from Exercise 1 still open, locate the **hello.c** file in the **src** folder in the **Project** window. Right-click on the file and rename it to **hello.s**. Open **hello.s** in the editor and delete the entire contents. Insert the assembly language program shown in the *RISC-V assembly language* section in this chapter. Perform a clean and then rebuild the project (press *Ctrl+9* to initiate the clean operation). Select **Debug** under the **Run** menu. Once the debugger starts, open windows to display the **hello.s** source file, the **Disassembly** window, and the **Registers** window. Expand the **Registers** tree to display the RISC-V processor registers. Single-step through the program and verify the text *Hello, Computer Architect!* appears in the Console window.


# Answer
With the project from Exercise 1 still open, locate the **hello.c** file in the **src** folder in the **Project** window, then do the following:

1. Right-click on the file and rename it to **hello.s**.

1. Open **hello.s** in the editor and delete the entire contents.

1. Insert the assembly language program shown in the *RISC-V assembly language* section in this chapter. This is the assembly code, also available in [Ex__2_riscv_assembly.s](src/Ex__2_riscv_assembly.s):

```
.section .text
.global main

main:
    # Reserve stack space and save the return address
    addi    sp, sp, -16
    sd      ra, 0(sp)

    # Print the message using the C library puts function
1:  auipc   a0, %pcrel_hi(msg)
    addi    a0, a0, %pcrel_lo(1b)
    jal     ra, puts

    # Restore the return address and sp, and return to caller
    ld      ra, 0(sp)
    addi    sp, sp, 16
    jalr    zero, ra, 0

.section .rodata
msg:
    .asciz "Hello, Computer Architect!\n"
```

4. Perform a clean and then rebuild the project (press *Ctrl+9* to initiate the clean operation).

1. Select **Debug** under the **Run** menu.

1. Once the debugger starts, open windows to display the **hello.s** source file, the **Disassembly** window, and the **Registers** window.

1. Expand the **Registers** tree to display the RISC-V processor registers.

1. Single-step through the program and verify the text *Hello, Computer Architect!* appears in the Console window.
