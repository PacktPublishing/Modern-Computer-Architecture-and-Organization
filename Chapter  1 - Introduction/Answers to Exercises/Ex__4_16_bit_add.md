__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 1, Exercise 4

6502 assembly language references data in memory locations using an operand value containing the address (without the # that indicates an immediate value). For example, the instruction LDA $00 loads the byte at memory address $00 into A. STA $01 stores the byte in A into address $01. Addresses can be any value in the range 0 to $FFFF, assuming memory exists at the address and the address is not already in use for some other purpose. Using your favorite 6502 emulator, write 6502 assembly code to store a 16-bit value into addresses $00-$01, store a second value into addresses $02-$03, then add the two values and store the result in $04-$05. Be sure to propagate any carry between the two bytes. Ignore any carry from the 16-bit result. Test with $0000+$0001, $00FF+$0001, $1234+$5678.

# Answer
See the 6502 assembly file [Ex__4_16_bit_addition.asm](src/Ex__4_16_bit_addition.asm) for the 16-bit addition code.

Try running this code at https://skilldrick.github.io/easy6502/