#!/usr/bin/env python

"""Ex__2_dct_formula.py: Answer to chapter 6 exercise 2."""

# Output produced by this program:
# Index       0       1       2       3       4       5       6       7
# x        0.5000  0.2000  0.7000 -0.6000  0.4000 -0.2000  1.0000 -0.3000
# DCT(x)   1.7000  0.4244  0.6374  0.4941 -1.2021  0.5732 -0.4936  2.3296

import math

# Input vector
x = [0.5, 0.2, 0.7, -0.6, 0.4, -0.2, 1.0, -0.3]

# Compute the DCT coefficients
dct_coef = [[i for i in range(len(x))] for j in range(len(x))]
for n in range(len(x)):
    for k in range(len(x)):
        dct_coef[n][k] = math.cos((math.pi/len(x))*(n + 1/2)*k);

# Compute the DCT
x_dct = [i for i in range(len(x))]
for k in range(len(x)):
    x_dct[k] = 0;
    for n in range(len(x)):
        x_dct[k] += x[n]*dct_coef[n][k];

# Print the results
print('Index', end='')
for i in range(len(x)):
    print("%8d" % i, end='')

print('\nx      ', end='')
for i in range(len(x)):
    print("%8.4f" % x[i], end='')

print('\nDCT(x) ', end='')
for i in range(len(x)):
    print("%8.4f" % x_dct[i], end='')
