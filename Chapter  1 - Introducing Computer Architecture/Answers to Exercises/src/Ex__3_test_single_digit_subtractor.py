#!/usr/bin/env python

"""Ex__3_test_single_digit_subtractor.py: Tests for answer 
to chapter 1 exercise 3 (tests for single digit 
subtractor)."""

import unittest
import Ex__3_single_digit_subtractor

class TestSingleDigitSubtractor(unittest.TestCase):
    def test_1(self):
        self.assertEqual(Ex__3_single_digit_subtractor.
        subtract_digits(0, 0), (0, 1))

    def test_2(self):
        self.assertEqual(Ex__3_single_digit_subtractor.
        subtract_digits(0, 1), (9, 0))

    def test_3(self):
        self.assertEqual(Ex__3_single_digit_subtractor.
        subtract_digits(1, 0), (1, 1))

    def test_4(self):
        self.assertEqual(Ex__3_single_digit_subtractor.
        subtract_digits(1, 2), (9, 0))

    def test_5(self):
        self.assertEqual(Ex__3_single_digit_subtractor.
        subtract_digits(5, 5), (0, 1))

    def test_6(self):
        self.assertEqual(Ex__3_single_digit_subtractor.
        subtract_digits(9, 1), (8, 1))

    def test_7(self):
        self.assertEqual(Ex__3_single_digit_subtractor.
        subtract_digits(9, 9), (0, 1))

if __name__ == '__main__':
    unittest.main()