#!/usr/bin/env python

"""Ex__1_single_digit_adder.py: Answer to Ch 1 Ex 1."""

import sys

# Perform one step of the Analytical Engine addition
# operation. a and b are the digits being added, c is the
# carry
def increment_adder(a, b, c):
    a = a - 1        # Decrement addend
    b = (b + 1) % 10 # Increment accum, wrap to 0 if necessary
    
    if b == 0:       # If accumulator is 0, increment carry
        c = c + 1
        
    return a, b, c;

# Add two decimal digits passed on the command line.
# The sum is returned as digit2 and the carry is 0 or 1.
def add_digits(digit1, digit2):
    carry = 0
    
    while digit1 > 0:
        [digit1, digit2, carry] = increment_adder(
        digit1, digit2, carry)

    return digit2, carry
    