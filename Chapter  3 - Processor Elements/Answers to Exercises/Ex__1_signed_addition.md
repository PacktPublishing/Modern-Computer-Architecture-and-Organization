__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 3, Exercise 1

Consider the addition of two signed 8-bit numbers (that is, numbers in the range -128 to +127) where one operand is positive and the other is negative. Is there any pair of 8-bit numbers of different signs that, when added together, will exceed the range -128 to +127? This would constitute a signed overflow. Note: We’re only looking at addition here because, as we’ve seen, subtraction in the 6502 architecture is the same as addition with the right operand’s bits inverted.

# Answer
The range of the positive (or nonnegative) numbers is 0 to 127. The range of negative numbers is -128 to -1. It is only necessary to consider the extremes of each of these ranges to cover all possibilities.

Sum | Result
--- | ------
0 + -128 | -128
127 + -128 | -1
0 + -1 | -1
127 + -1 | 126

There is no pair of 8-bit numbers of different signs that, when added together, exceeds the range -128 to +127.