#!/usr/bin/env python

"""Answer to chapter 1 exercise 1."""

import sys

# Perform one step of the Analytical Engine addition operation
# a and b are the digits being added, c is the carry
def increment_adder(a, b, c):
    a = a - 1           # Decrement addend
    b = (b + 1) % 10    # Increment accumulator, back to 0 if necessary
    
    if b == 0:          # If accumulator reached 0, increment the carry
        c = c + 1
        
    return a, b, c;

# Add two decimal digits passed on the command line.
# The sum is returned as digit2 and the carry output is 0 or 1.
def add_digits(digit1, digit2):
    carry = 0
    print("\nInput: digit1: " + str(digit1) + " digit2: " + str(digit2))
    
    while digit1 > 0:
        print("digit1: " + str(digit1) + " digit2: " + str(digit2) + " carry: " + str(carry))
        [digit1, digit2, carry] = increment_adder(digit1, digit2, carry)

    print("Result: digit1: " + str(digit1) + " digit2: " + str(digit2) + " carry: " + str(carry))
    
    return digit2, carry
    