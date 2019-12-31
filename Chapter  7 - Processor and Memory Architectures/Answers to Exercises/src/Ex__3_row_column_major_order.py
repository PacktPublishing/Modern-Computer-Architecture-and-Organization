#!/usr/bin/env python

"""Ex__3_row_column_major_order.py: Answer to chapter 7 exercise 3."""

# Typical output from a run of this script:
# Average row-major time   : 16.68 sec
# Average column-major time: 15.94 sec
# Average time difference  : 0.74 sec
# Winner is column-major indexing; It is faster by 4.42%

import time
  
dim = 10000
matrix = [[0] * dim] * dim

num_passes = 10
row_major_time = 0
col_major_time = 0

for k in range(num_passes):
    print('Pass %d of %d:' % (k+1, num_passes))

    t0 = time.time()
    for i in range(dim):
        for j in range(dim):
            matrix[i][j] = i + j

    t1 = time.time()

    total_time = t1 - t0
    col_major_time = col_major_time + total_time
    print('  Column-major time to fill array: %.2f sec' % total_time)

    t0 = time.time()
    for i in range(dim):
        for j in range(dim):
            matrix[j][i] = i + j

    t1 = time.time()

    total_time = t1 - t0
    row_major_time = row_major_time + total_time
    print('  Row-major time to fill array: %.2f sec' % total_time)
    print('')
    
row_major_average = row_major_time / num_passes
col_major_average = col_major_time / num_passes

if (row_major_average < col_major_average):
    winner = 'row'
    pct_better = 100 * (col_major_average - row_major_average) / col_major_average
else:
    winner = 'column'
    pct_better = 100 * (row_major_average - col_major_average) / row_major_average

print('Average row-major time   : %.2f sec' % row_major_average)
print('Average column-major time: %.2f sec' % col_major_average)
print('Average time difference  : %.2f sec' % ((row_major_time-col_major_time) / num_passes))
print(('Winner is ' + winner + '-major indexing; It is faster by %.2f%%') % pct_better)
