__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 11, Exercise 3

Write a RISC-V assembly language program that computes the following expression and prints the result as a hexadecimal number: {(129 – 66) &times; (445 + 136)} &div; 3. As part of this program, create a callable function to print one byte as two hex digits.

# Answer
Create a new Freedom Studio project using the same steps as in [Exercise 1](Ex__1_hello_riscv.md) in this chapter. Locate the **hello.c** file in the **src** folder in the **Project** window.

1. Right-click on the file and rename it to **hello.s**.

1. Create your assembly language source code within the **hello.s** file. See [Ex__3_riscv_expr.s](src/Ex__3_riscv_expr.s) for an example solution to this exercise.
 
1. Perform a clean and then rebuild the project (press *Ctrl+9* to initiate the clean operation).

1. Select **Debug** under the **Run** menu.

1. Once the debugger starts, open windows to display the **hello.s** source file, the **Disassembly** window, and the **Registers** window.

1. Expand the **Registers** tree to display the RISC-V processor registers.

1. Single-step through the program and verify the text *[(129 - 66) * (445 + 136)] / 3 = 2FA9h* appears in the Console window.
