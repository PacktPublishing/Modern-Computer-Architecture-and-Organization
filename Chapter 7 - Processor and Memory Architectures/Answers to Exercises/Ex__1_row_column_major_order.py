#!/usr/bin/env python

"""Answer to chapter 7 exercise 1."""

import time
  
dim = 10000

matrix = [[0] * dim] * dim

num_passes = 10
row_major_time = 0
col_major_time = 0

for k in range(num_passes):
    t0 = time.time()
    for i in range(dim):
        for j in range(dim):
            matrix[i][j] = i + j

    t1 = time.time()

    total_time = t1 - t0
    row_major_time = row_major_time + total_time

    print("Column-major time to fill array: ", end='')
    print(total_time)

    t0 = time.time()
    for i in range(dim):
        for j in range(dim):
            matrix[j][i] = i + j

    t1 = time.time()

    total_time = t1 - t0
    col_major_time = col_major_time + total_time

    print("Row-major time to fill array: ", end='')
    print(total_time)

print("Average row_major_time: ", end='')
print(row_major_time / num_passes)
print("Average column_major_time: ", end='')
print(col_major_time / num_passes)
print("Average time differenc: ", end='')
print((row_major_time-col_major_time) / num_passes)

