__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
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
C:\>python Ex__3_test_single_digit_subtractor.py
.......
----------------------------------------------------------------------
Ran 7 tests in 0.001s

OK
```
This is the output of a test run of **Ex__3_test_40_digit_subtractor.py**:
```
C:\>python Ex__3_test_40_digit_subtractor.py
....
----------------------------------------------------------------------
Ran 4 tests in 0.001s

OK
```
