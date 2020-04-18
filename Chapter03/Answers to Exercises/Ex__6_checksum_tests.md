__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 3, Exercise 6

Write and execute a set of tests to verify correct operation of the checksum testing subroutine you implemented in [Exercise 4](Ex__4_checksum_alg.md) and [Exercise 5](Ex__5_checksum_subroutine.md). What is the shortest block of data your code can perform checksum validation upon? What is the longest block?

# Answer

See [Ex__6_checksum_tests.asm](src/Ex__6_checksum_tests.asm)

The checksum routine works for byte sequences with lengths from 1 to 255 bytes.
