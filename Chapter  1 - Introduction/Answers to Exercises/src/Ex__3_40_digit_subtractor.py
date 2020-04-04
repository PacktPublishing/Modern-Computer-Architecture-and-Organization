#!/usr/bin/env python

"""Ex__3_40_digit_subtractor.py: Answer to Ch 1 Ex 3."""

import sys
import Ex__3_single_digit_subtractor

# Subtract two decimal numbers of up to 40 digits and
# return the result. Input and output numeric values are
# represented as strings.
def subtract_40_digits(str1, str2):
    max_digits = 40
    
    # Convert str1 into a 40 decimal digit value
    num1 = [0]*max_digits
    for i, c in enumerate(reversed(str1)):
        num1[i] = int(c) - int('0')

    # Convert str2 into a 40 decimal digit value
    num2 = [0]*max_digits
    i = 0
    for i, c in enumerate(reversed(str2)):
        num2[i] = int(c) - int('0')
        i = i + 1

    # Subtract the digits at each position and record the
    # carry for each position
    diff = [0]*max_digits
    carry = [0]*max_digits
    for i in range(max_digits):
        (diff[i], carry[i]) = Ex__3_single_digit_subtractor.\
        subtract_digits(num1[i], num2[i])
    
    # Ripple the carry values across the digits
    for i in range(max_digits-1):
        if (carry[i] == 0):
            diff[i+1] = (diff[i+1] - 1) % 10
            if (diff[i+1] == 9):
                carry[i+1] = 0

    # Convert the result into a string with leading zeros
    # removed
    diff.reverse()
    diff_str = "".join(map(str, diff))
    diff_str = diff_str.lstrip('0') or '0'
    return diff_str
