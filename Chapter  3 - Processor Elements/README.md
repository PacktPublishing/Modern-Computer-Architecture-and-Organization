__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing.
# Chapter 3 - Processor Elements

This chapter begins our development of a comprehensive understanding of modern
processor architectures. Building upon the basic digital circuits introduced in *Chapter 2, Digital Logic*, we discuss the functional units of a simple, generic computer processor.
Concepts related to the instruction set and register set are introduced, followed by
a discussion of the steps involved in instruction loading, decoding, execution, and
sequencing. Addressing modes and instruction categories are discussed in the context of
the 6502 architecture. The need for processor interrupt handling is introduced, using the
example of 6502 interrupt processing. The standard approaches modern processors employ
for input/output (I/O) operations are introduced, including direct memory access.

After completing this chapter, you will understand the basic parts of a processor and
the structure of processor instruction sets. You will have learned the types of processor
instructions, why interrupt processing is necessary, and will understand I/O operations.

The following topics will be covered in this chapter:
* A simple processor
* The instruction set
* Addressing modes
* Instruction categories
* Interrupt processing
* Input/output operations

# Chapter Files

[ALU.vhdl](src/ALU.vhdl) is the VHDL implementation of the 6502-like ALU discussed in the *Arithmetic logic unit* section of Chapter 3.

The following files are 6502 assembly language examples from this chapter:
File | Description
---- | -----------
[immediate_addressing_mode.asm](src/immediate_addressing_mode.asm) | Immediate addressing mode.
[absolute_addressing_mode.asm](src/absolute_addressing_mode.asm) | Absolute addressing mode.
[absolute_indexed_addressing_mode.asm](src/absolute_indexed_addressing_mode.asm) | Absolute indexed addressing mode.
[looping_absolute_indexed_addressing.asm](src/looping_absolute_indexed_addressing.asm) | Looping absolute indexed addressing mode.
[indirect_indexed_addressing_mode.asm](src/indirect_indexed_addressing_mode.asm) | Indirect indexed addressing mode.
[interrupt_handler.asm](src/interrupt_handler.asm) | Interrupt handler.
[brk_handler.asm](src/brk_handler.asm) | Break handler.

# Answers to Exercises
[Answers to Exercises](Answers%20to%20Exercises/README.md)
