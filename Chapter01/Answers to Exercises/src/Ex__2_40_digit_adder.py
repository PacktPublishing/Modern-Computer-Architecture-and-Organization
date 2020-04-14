#!/usr/bin/env python

"""Ex__2_40_digit_adder.py: Answer to Ch 1 Ex 2."""

import sys
import Ex__1_single_digit_adder

# Add two decimal numbers of up to 40 digits and return the
# sum. Input and output numeric values are represented as
# strings.
def add_40_digits(str1, str2):
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

    # Sum the digits at each position and record the
    # carry for each position
    sum = [0]*max_digits
    carry = [0]*max_digits
    for i in range(max_digits):
        (sum[i], carry[i]) = Ex__1_single_digit_adder.\
        add_digits(num1[i], num2[i])
    
    # Ripple the carry values across the digits
    for i in range(max_digits-1):
        if (carry[i] == 1):
            sum[i+1] = (sum[i+1] + 1) % 10
            if (sum[i+1] == 0):
                carry[i+1] = 1

    # Convert the result into a string with leading zeros
    # removed
    sum.reverse()
    sum_str = "".join(map(str, sum))
    sum_str = sum_str.lstrip('0') or '0'
    return sum_str
