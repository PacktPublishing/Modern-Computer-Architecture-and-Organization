# Chapter 1, Exercise 2

Create arrays of 40 decimal digits each for the addend, accumulator, and carry. Prompt the user for two decimal integers of up to 40 digits each. Perform the addition digit by digit using the cycles described in Question 1, and collect the carry output from each digit position in the carry array. After the cycles are complete, insert carries, and, where necessary, ripple them across digits to complete the addition operation. Display the results after each cycle and at the end. Test with the same sums as in Exercise 1 and also test 99+1, 999999+1, 49+50, and 50+50.

# Answer
See the python file [Ex__2_40_digit_adder.py](src/Ex__2_40_digit_adder.py) for the adder code.

See the file [Ex__1_test_single_digit_adder.py](src/Ex__2_test_40_digit_adder.py) for the test code.

To execute the tests, assuming **python** is installed and is in your path, execute the command **python Ex__2_test_40_digit_adder.py**

This is the output of a test run:
```
C:\>python Ex__2_test_40_digit_adder.py

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0
.
Input: digit1: 9 digit2: 0
digit1: 9 digit2: 0 carry: 0
digit1: 8 digit2: 1 carry: 0
digit1: 7 digit2: 2 carry: 0
digit1: 6 digit2: 3 carry: 0
digit1: 5 digit2: 4 carry: 0
digit1: 4 digit2: 5 carry: 0
digit1: 3 digit2: 6 carry: 0
digit1: 2 digit2: 7 carry: 0
digit1: 1 digit2: 8 carry: 0
Result: digit1: 0 digit2: 9 carry: 0

Input: digit1: 4 digit2: 5
digit1: 4 digit2: 5 carry: 0
digit1: 3 digit2: 6 carry: 0
digit1: 2 digit2: 7 carry: 0
digit1: 1 digit2: 8 carry: 0
Result: digit1: 0 digit2: 9 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0
.
Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 5 digit2: 5
digit1: 5 digit2: 5 carry: 0
digit1: 4 digit2: 6 carry: 0
digit1: 3 digit2: 7 carry: 0
digit1: 2 digit2: 8 carry: 0
digit1: 1 digit2: 9 carry: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0
.
Input: digit1: 0 digit2: 1
Result: digit1: 0 digit2: 1 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0
.
Input: digit1: 1 digit2: 0
digit1: 1 digit2: 0 carry: 0
Result: digit1: 0 digit2: 1 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0
.
Input: digit1: 1 digit2: 2
digit1: 1 digit2: 2 carry: 0
Result: digit1: 0 digit2: 3 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0
.
Input: digit1: 5 digit2: 5
digit1: 5 digit2: 5 carry: 0
digit1: 4 digit2: 6 carry: 0
digit1: 3 digit2: 7 carry: 0
digit1: 2 digit2: 8 carry: 0
digit1: 1 digit2: 9 carry: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0
.
Input: digit1: 9 digit2: 1
digit1: 9 digit2: 1 carry: 0
digit1: 8 digit2: 2 carry: 0
digit1: 7 digit2: 3 carry: 0
digit1: 6 digit2: 4 carry: 0
digit1: 5 digit2: 5 carry: 0
digit1: 4 digit2: 6 carry: 0
digit1: 3 digit2: 7 carry: 0
digit1: 2 digit2: 8 carry: 0
digit1: 1 digit2: 9 carry: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0
.
Input: digit1: 9 digit2: 9
digit1: 9 digit2: 9 carry: 0
digit1: 8 digit2: 0 carry: 1
digit1: 7 digit2: 1 carry: 1
digit1: 6 digit2: 2 carry: 1
digit1: 5 digit2: 3 carry: 1
digit1: 4 digit2: 4 carry: 1
digit1: 3 digit2: 5 carry: 1
digit1: 2 digit2: 6 carry: 1
digit1: 1 digit2: 7 carry: 1
Result: digit1: 0 digit2: 8 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0
.
Input: digit1: 9 digit2: 1
digit1: 9 digit2: 1 carry: 0
digit1: 8 digit2: 2 carry: 0
digit1: 7 digit2: 3 carry: 0
digit1: 6 digit2: 4 carry: 0
digit1: 5 digit2: 5 carry: 0
digit1: 4 digit2: 6 carry: 0
digit1: 3 digit2: 7 carry: 0
digit1: 2 digit2: 8 carry: 0
digit1: 1 digit2: 9 carry: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 9 digit2: 0
digit1: 9 digit2: 0 carry: 0
digit1: 8 digit2: 1 carry: 0
digit1: 7 digit2: 2 carry: 0
digit1: 6 digit2: 3 carry: 0
digit1: 5 digit2: 4 carry: 0
digit1: 4 digit2: 5 carry: 0
digit1: 3 digit2: 6 carry: 0
digit1: 2 digit2: 7 carry: 0
digit1: 1 digit2: 8 carry: 0
Result: digit1: 0 digit2: 9 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0
.
Input: digit1: 9 digit2: 1
digit1: 9 digit2: 1 carry: 0
digit1: 8 digit2: 2 carry: 0
digit1: 7 digit2: 3 carry: 0
digit1: 6 digit2: 4 carry: 0
digit1: 5 digit2: 5 carry: 0
digit1: 4 digit2: 6 carry: 0
digit1: 3 digit2: 7 carry: 0
digit1: 2 digit2: 8 carry: 0
digit1: 1 digit2: 9 carry: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 9 digit2: 0
digit1: 9 digit2: 0 carry: 0
digit1: 8 digit2: 1 carry: 0
digit1: 7 digit2: 2 carry: 0
digit1: 6 digit2: 3 carry: 0
digit1: 5 digit2: 4 carry: 0
digit1: 4 digit2: 5 carry: 0
digit1: 3 digit2: 6 carry: 0
digit1: 2 digit2: 7 carry: 0
digit1: 1 digit2: 8 carry: 0
Result: digit1: 0 digit2: 9 carry: 0

Input: digit1: 9 digit2: 0
digit1: 9 digit2: 0 carry: 0
digit1: 8 digit2: 1 carry: 0
digit1: 7 digit2: 2 carry: 0
digit1: 6 digit2: 3 carry: 0
digit1: 5 digit2: 4 carry: 0
digit1: 4 digit2: 5 carry: 0
digit1: 3 digit2: 6 carry: 0
digit1: 2 digit2: 7 carry: 0
digit1: 1 digit2: 8 carry: 0
Result: digit1: 0 digit2: 9 carry: 0

Input: digit1: 9 digit2: 0
digit1: 9 digit2: 0 carry: 0
digit1: 8 digit2: 1 carry: 0
digit1: 7 digit2: 2 carry: 0
digit1: 6 digit2: 3 carry: 0
digit1: 5 digit2: 4 carry: 0
digit1: 4 digit2: 5 carry: 0
digit1: 3 digit2: 6 carry: 0
digit1: 2 digit2: 7 carry: 0
digit1: 1 digit2: 8 carry: 0
Result: digit1: 0 digit2: 9 carry: 0

Input: digit1: 9 digit2: 0
digit1: 9 digit2: 0 carry: 0
digit1: 8 digit2: 1 carry: 0
digit1: 7 digit2: 2 carry: 0
digit1: 6 digit2: 3 carry: 0
digit1: 5 digit2: 4 carry: 0
digit1: 4 digit2: 5 carry: 0
digit1: 3 digit2: 6 carry: 0
digit1: 2 digit2: 7 carry: 0
digit1: 1 digit2: 8 carry: 0
Result: digit1: 0 digit2: 9 carry: 0

Input: digit1: 9 digit2: 0
digit1: 9 digit2: 0 carry: 0
digit1: 8 digit2: 1 carry: 0
digit1: 7 digit2: 2 carry: 0
digit1: 6 digit2: 3 carry: 0
digit1: 5 digit2: 4 carry: 0
digit1: 4 digit2: 5 carry: 0
digit1: 3 digit2: 6 carry: 0
digit1: 2 digit2: 7 carry: 0
digit1: 1 digit2: 8 carry: 0
Result: digit1: 0 digit2: 9 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 0
.
----------------------------------------------------------------------
Ran 11 tests in 0.942s

OK
```