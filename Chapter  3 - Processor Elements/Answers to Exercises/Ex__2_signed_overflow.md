__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 3, Exercise 2

If the answer to exercise 1 is “no,” this implies the only way to create a signed overflow is to add two numbers of the same sign. If an overflow occurs, what can you say about the result of performing XOR between the most significant bit of each operand with the most significant bit of the result? In other words, what will be the result of the expressions **left(7) XOR result(7)** and **right(7) XOR result(7)**? In these expressions, **(7)** indicates bit 7, the most significant bit.

# Answer
Bit 7 is the sign bit. Since overflow can only occur when both operands are of the same sign, **left(7)** must equal **right(7)** when an overflow occurs.

When overflow occurs, the sign of the result differs from the sign of the two operands. This means **result(7)** differs from bit 7 of both of the operands.

Therefore, **left(7) XOR result(7)** = 1 and **right(7) XOR result(7)** = 1 whenever overflow occurs.
