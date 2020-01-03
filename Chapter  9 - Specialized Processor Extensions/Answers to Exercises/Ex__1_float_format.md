__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing.
# Chapter 9, Exercise 1

Using a programming language that allows access to the byte representation of floating-point data types (such as C or C++), write a function that accepts a 32-bit single-precision variable as input. Extract the sign, exponent, and mantissa from the bytes of the floating-point variable and display them. Remove the bias term from the exponent before displaying its value. Test the program with the values 0, -0, 1, -1, 6.674e-11, 1.0e38, 1.0e39, 1.0e-38, and 1.0e-39. Note that the numeric values listed here containing “e” are in the C/C++ text format for floating-point numbers. For example, 6.674e-11 means 6.674 &times; 10<sup>-11</sup>.

# Answer
See the C++ file [Ex__1_float_format.cpp](src/Ex__1_float_format.cpp).

This is the output of the program:
```
  Type  |   Number  |       Bytes      | Sign | Exponent | Mantissa
 -------|-----------|------------------|------|----------|---------
 Float  |         0 |     00000000     |   0  |   -126   | 0.000000
 Float  |         0 |     00000000     |   0  |   -126   | 0.000000
 Float  |         1 |     3F800000     |   0  |      0   | 1.000000
 Float  |        -1 |     BF800000     |   1  |      0   | 1.000000
 Float  | 6.674e-11 |     2E92C348     |   0  |    -34   | 1.146585
 Float  |     1e+38 |     7E967699     |   0  |    126   | 1.175494
 Float  |     1e-38 |     006CE3EE     |   0  |   -126   | 0.850706
 Float  |     1e-39 |     000AE398     |   0  |   -126   | 0.085071
```
Some notes about these results:
* Zero in IEEE 754 can have a positive or negative sign. The zero passed to the **print_float** function in the second row of the table is preceded with a minus sign, but the sign is ignored during the conversion to floating-point.
* The value **1.0e39f** is not shown because using it causes a compile-time error: floating constant is out of range.
* Zero is represented as a mantissa of zero and a biased exponent of zero.
* The last two rows contain numbers that cannot be represented with an implicit leading 1 bit because the exponent would underflow. These numbers are called subnormals, and contain the special biased exponent of 0. Subnormals have reduced precision because not all bits of the mantissa contain meaningful digits.
* Subnormal floats use a biased exponent of 1, which translates to an unbiased exponent of -126.