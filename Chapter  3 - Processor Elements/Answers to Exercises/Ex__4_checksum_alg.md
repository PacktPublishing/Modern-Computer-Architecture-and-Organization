__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 3, Exercise 4

When transferring blocks of data over an error-prone transmission medium, it is common to use a checksum to determine if any data bits were lost or corrupted during transmission. The checksum is typically appended to the transferred data record. One checksum algorithm uses these steps:

1. Add all the bytes in the data record together, retaining only the lowest 8 bits of the sum.
1. The checksum is the two’s complement of the 8-bit sum.
1. Append the checksum byte to the data record.

After receiving a data block with the appended checksum, the processor can determine if the checksum is valid by simply adding all the bytes in the record, including the checksum, together. The checksum is valid if the lowest 8 bits of the sum are zero. Implement this checksum algorithm using 6502 assembly language. The data bytes begin at the memory location store in addresses $10-$11 and the number of bytes (including the checksum byte) is provided as an input in the X register. Set the A register to 1 if the checksum is valid, and to 0 if it is invalid.

# Answer

See [Ex__4_checksum_alg.asm](src/Ex__4_checksum_alg.asm)
