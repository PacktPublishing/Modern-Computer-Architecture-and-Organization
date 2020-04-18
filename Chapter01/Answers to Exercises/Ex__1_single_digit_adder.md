__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 1, Exercise 1

Using your favorite programming language, develop a simulation of a single-digit decimal adder that operates in the same manner as in Babbage’s Analytical Engine. First, prompt the user for two digits in the range 0-9: the addend and the accumulator. Display the addend, the accumulator, and the carry, which is initially zero. Perform a series of cycles as follows: 

a. If the addend is zero, display the values of the addend, accumulator, and carry and terminate the program. 

b. Decrement the addend by one and increment the accumulator by one. 

c. If the accumulator incremented from nine to zero, increment the carry. 

d. Go back to step a. 

Test your code with these sums: 0+0, 0+1, 1+0, 1+2, 5+5, 9+1, and 9+9.

# Answer
See the python file [Ex__1_single_digit_adder.py](src/Ex__1_single_digit_adder.py) for the adder code.

See the file [Ex__1_test_single_digit_adder.py](src/Ex__1_test_single_digit_adder.py) for the test code.

To execute the tests, assuming **python** is installed and is in your path, execute the command **python Ex__1_test_single_digit_adder.py**

This is the output of a test run:
```
C:\>python Ex__1_test_single_digit_adder.py
.......
----------------------------------------------------------------------
Ran 7 tests in 0.001s

OK
```