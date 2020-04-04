#!/usr/bin/env python

"""Ex__2_test_40_digit_adder.py: Tests for answer to
 chapter 1 exercise 2."""

import unittest
import Ex__2_40_digit_adder

class TestSingleDigitAdder(unittest.TestCase):
    def test_1(self):
        self.assertEqual(Ex__2_40_digit_adder.add_40_digits(
        "0", "0"), "0")

    def test_2(self):
        self.assertEqual(Ex__2_40_digit_adder.add_40_digits(
        "0", "1"), "1")

    def test_3(self):
        self.assertEqual(Ex__2_40_digit_adder.add_40_digits(
        "1", "0"), "1")

    def test_4(self):
        self.assertEqual(Ex__2_40_digit_adder.add_40_digits(
        "1", "2"), "3")

    def test_5(self):
        self.assertEqual(Ex__2_40_digit_adder.add_40_digits(
        "5", "5"), "10")

    def test_6(self):
        self.assertEqual(Ex__2_40_digit_adder.add_40_digits(
        "9", "1"), "10")

    def test_7(self):
        self.assertEqual(Ex__2_40_digit_adder.add_40_digits(
        "9", "9"), "18")

    def test_8(self):
        self.assertEqual(Ex__2_40_digit_adder.add_40_digits(
        "99", "1"), "100")

    def test_9(self):
        self.assertEqual(Ex__2_40_digit_adder.add_40_digits(
        "999999", "1"), "1000000")

    def test_10(self):
        self.assertEqual(Ex__2_40_digit_adder.add_40_digits(
        "49", "50"), "99")

    def test_11(self):
        self.assertEqual(Ex__2_40_digit_adder.add_40_digits(
        "50", "50"), "100")

if __name__ == '__main__':
    unittest.main()