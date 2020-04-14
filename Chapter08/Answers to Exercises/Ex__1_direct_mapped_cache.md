__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing.
# Chapter 8, Exercise 1

Consider a direct-mapped L1-I cache of 32KB. Each cache line consists of 64 bytes and the system address space is 4GB. How many bits are in the cache tag? Which bit numbers (bit 0 is the least significant bit) are they within the address word?

# Answer
The cache contains 32,768 bytes with 64 bytes in each line. There are 32,768 &divide; 64 = 512 sets in the cache. 512 = 2<sup>9</sup>. The set number is thus 9 bits in length.

Each cache line contains 64 (2<sup>6</sup>) bytes, which means the lower 6 bits of each address represent the byte offset within the cache line.

A 4GB address space requires 32-bit addresses. Subtracting the 9 bits in the set number and the 6 bits in the byte offset from the 32-bit address results in 32 - (9 + 6) = **17 bits in the cache tag.**

The cache tag lies in the 17 most significant bits of the address, so **the range of these bits within a 32-bit address runs from bit 15 to bit 31.**
