#!/usr/bin/env python

"""Ex__3_single_digit_subtractor.py: Answer to Ch 1 Ex 3 
(single digit subtractor)."""

import sys

# Perform one step of the Analytical Engine subtraction
# operation. a and b are the digits being subtracted (a - b),
# c is the carry: 0 = borrow, 1 = not borrow
def decrement_subtractor(a, b, c):
    a = (a - 1) % 10 # Decrement left operand, to 9 if wrapped
    b = b - 1        # Decrement accumulator
    
    if a == 9:       # If accum reached 9, decrement carry
        c = c - 1
        
    return a, b, c;

# Subtract two decimal digits. The difference is returned as
# digit1 and the carry output is 0 (borrow) or 1 (not borrow).
def subtract_digits(digit1, digit2):
    carry = 1
    
    while digit2 > 0:
        [digit1, digit2, carry] = decrement_subtractor(
        digit1, digit2, carry)

    return digit1, carry
    