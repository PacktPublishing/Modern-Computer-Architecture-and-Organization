__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing.
# Chapter 7, Exercise 3

The order of accessing sequential elements in a large data structure can have a measurable impact on processing speed due to factors such as the reuse of TLB entries. Accessing distant array elements in sequence (that is, elements that are not in the same page frame as previously accessed elements) requires frequent soft faults as new TLB entries are loaded and old TLB entries are discarded.

Write a program that creates a two-dimensional array of numbers with a large size such as 10,000 rows by 10,000 columns. Iterate through the array in column-major order, assigning each element the sum of the row and column indices. Column-major means the column index increments fastest. In other words, the column index increments in the inner loop. Measure precisely how long this procedure takes. Note, you may need to take steps to ensure your programming language does not optimize away the entire calculation if the results from the array are not used later. If may suffice to print one of the array values after the timing is complete, or you may need to do something like sum all the array elements and print that result. 

Repeat the process, including the timing, exactly as above, except change the inner loop to iterate over the row index and the outer loop iterate over the column index, making the access sequence row-major.

Since general-purpose computers perform many other tasks while running your code, you may need to perform both procedures a number of times to get a statistically valid result. You might start by running the experiment 10 times and averaging the times for column-major and row-major array access.

Are you able to determine a persistently superior array access method? Which order is fastest on your system using the language you selected? Note that the difference between column-major and row-major access order may not be dramatic – It might be just a few percent.

# Answer
See [Ex__3_row_column_major_order.py](src/Ex__3_row_column_major_order.py) for the python implementation of a solution of this exercise. This program takes a few minutes to run on a Windows PC.

This is typical output from a run of this program:

```
Average row-major time   : 16.68 sec
Average column-major time: 15.94 sec
Average time difference  : 0.74 sec
Winner is column-major indexing; It is faster by 4.42%
```