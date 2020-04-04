#!/usr/bin/env python

"""Ex__3_test_40_digit_subtractor.py: Tests for answer to 
chapter 1 exercise 3."""

import unittest
import Ex__3_40_digit_subtractor

class TestSingleDigitSubtractor(unittest.TestCase):
    def test_1(self):
        self.assertEqual(Ex__3_40_digit_subtractor.
        subtract_40_digits("0", "0"), "0")

    def test_2(self):
        self.assertEqual(Ex__3_40_digit_subtractor.
        subtract_40_digits("1", "0"), "1")

    def test_3(self):
        self.assertEqual(Ex__3_40_digit_subtractor.
        subtract_40_digits("1000000", "1"), "999999")

    def test_4(self):
        self.assertEqual(Ex__3_40_digit_subtractor.
        subtract_40_digits("0", "1"), 
        "9999999999999999999999999999999999999999")

if __name__ == '__main__':
    unittest.main()