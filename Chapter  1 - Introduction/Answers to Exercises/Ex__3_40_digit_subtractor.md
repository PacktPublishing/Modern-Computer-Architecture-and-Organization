# Chapter 1, Exercise 3

Modify the program of Exercise 2 to implement subtraction of 40-digit decimal values. Perform borrowing as required. Test with 0-0, 1-0, 1000000-1, and 0-1. What is the result for 0-1?

# Answer
See the python file [Ex__3_single_digit_subtractor.py](src/Ex__3_single_digit_subtractor.py) for the single-digit subtractor code.

See the file [Ex__3_test_single_digit_subtractor.py](src/Ex__3_test_single_digit_subtractor.py) for the test code for the single-digit subtractor.

See the python file [Ex__3_40_digit_subtractor.py](src/Ex__3_40_digit_subtractor.py) for the 40-digit subtractor code.

See the file [Ex__3_test_40_digit_subtractor.py](src/Ex__3_test_40_digit_subtractor.py) for the test code for the 40-digit subtractor.

To execute the tests, assuming **python** is installed and is in your path, execute the commands **python Ex__3_test_single_digit_subtractor.py** and **python Ex__3_test_40_digit_subtractor.py**

This is the output of a test run of **Ex__3_test_single_digit_subtractor.py**:
```
>python Ex__3_test_single_digit_subtractor.py

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1
.
Input: digit1: 0 digit2: 1
digit1: 0 digit2: 1 carry: 1
Result: digit1: 9 digit2: 0 carry: 0
.
Input: digit1: 1 digit2: 0
Result: digit1: 1 digit2: 0 carry: 1
.
Input: digit1: 1 digit2: 2
digit1: 1 digit2: 2 carry: 1
digit1: 0 digit2: 1 carry: 1
Result: digit1: 9 digit2: 0 carry: 0
.
Input: digit1: 5 digit2: 5
digit1: 5 digit2: 5 carry: 1
digit1: 4 digit2: 4 carry: 1
digit1: 3 digit2: 3 carry: 1
digit1: 2 digit2: 2 carry: 1
digit1: 1 digit2: 1 carry: 1
Result: digit1: 0 digit2: 0 carry: 1
.
Input: digit1: 9 digit2: 1
digit1: 9 digit2: 1 carry: 1
Result: digit1: 8 digit2: 0 carry: 1
.
Input: digit1: 9 digit2: 9
digit1: 9 digit2: 9 carry: 1
digit1: 8 digit2: 8 carry: 1
digit1: 7 digit2: 7 carry: 1
digit1: 6 digit2: 6 carry: 1
digit1: 5 digit2: 5 carry: 1
digit1: 4 digit2: 4 carry: 1
digit1: 3 digit2: 3 carry: 1
digit1: 2 digit2: 2 carry: 1
digit1: 1 digit2: 1 carry: 1
Result: digit1: 0 digit2: 0 carry: 1
.
----------------------------------------------------------------------
Ran 7 tests in 0.025s

OK
```
This is the output of a test run of **Ex__3_test_40_digit_subtractor.py**:
```
>python Ex__3_test_40_digit_subtractor.py

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1
.
Input: digit1: 1 digit2: 0
Result: digit1: 1 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1
.
Input: digit1: 0 digit2: 1
digit1: 0 digit2: 1 carry: 1
Result: digit1: 9 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 1 digit2: 0
Result: digit1: 1 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1
.
Input: digit1: 0 digit2: 1
digit1: 0 digit2: 1 carry: 1
Result: digit1: 9 digit2: 0 carry: 0

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1

Input: digit1: 0 digit2: 0
Result: digit1: 0 digit2: 0 carry: 1
.
----------------------------------------------------------------------
Ran 4 tests in 0.202s

OK
```
