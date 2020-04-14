__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 1, Exercise 2

Create arrays of 40 decimal digits each for the addend, accumulator, and carry. Prompt the user for two decimal integers of up to 40 digits each. Perform the addition digit by digit using the cycles described in Question 1, and collect the carry output from each digit position in the carry array. After the cycles are complete, insert carries, and, where necessary, ripple them across digits to complete the addition operation. Display the results after each cycle and at the end. Test with the same sums as in Exercise 1 and also test 99+1, 999999+1, 49+50, and 50+50.

# Answer
See the python file [Ex__2_40_digit_adder.py](src/Ex__2_40_digit_adder.py) for the adder code.

See the file [Ex__2_test_40_digit_adder.py](src/Ex__2_test_40_digit_adder.py) for the test code.

To execute the tests, assuming **python** is installed and is in your path, execute the command **python Ex__2_test_40_digit_adder.py**

This is the output of a test run:
```
C:\>python Ex__2_test_40_digit_adder.py
...........
----------------------------------------------------------------------
Ran 11 tests in 0.002s

OK
```