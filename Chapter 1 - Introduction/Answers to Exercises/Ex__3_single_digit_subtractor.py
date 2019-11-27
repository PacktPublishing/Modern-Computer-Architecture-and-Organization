#!/usr/bin/env python

"""Answer to chapter 1 exercise 3 (single digit subtractor)."""

import sys

# Perform one step of the Analytical Engine subtraction operation
# a and b are the digits being subtracted (a - b),
# c is the carry: 0 = borrow, 1 = not borrow
def decrement_subtractor(a, b, c):
    a = (a - 1) % 10    # Decrement left operand, back to 9 if necessary
    b = b - 1           # Decrement accumulator
    
    if a == 9:          # If accumulator reached 9, decrement the carry
        c = c - 1
        
    return a, b, c;

# Subtract two decimal digits.
# The difference is returned as digit1 and the carry output is
# 0 (borrow) or 1 (not borrow).
def subtract_digits(digit1, digit2):
    carry = 1
    print("\nInput: digit1: " + str(digit1) + " digit2: " + str(digit2))
    
    while digit2 > 0:
        print("digit1: " + str(digit1) + " digit2: " + str(digit2) + " carry: " + str(carry))
        [digit1, digit2, carry] = decrement_subtractor(digit1, digit2, carry)

    print("Result: digit1: " + str(digit1) + " digit2: " + str(digit2) + " carry: " + str(carry))
    
    return digit1, carry
    