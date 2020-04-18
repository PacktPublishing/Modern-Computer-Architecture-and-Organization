__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing.
# Chapter 9, Exercise 2

Modify the program of Exercise 1 to also accept a double-precision floating-point value, and print the sign, exponent (with the bias removed), and mantissa from the value. Test with the same input values as in Exercise 1, and also with the values 1.0e308, 1.0e309, 1.0e-308, 1.0e-309.

# Answer
See the C++ file [Ex__2_double_format.cpp](src/Ex__2_double_format.cpp).

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
 Double |         0 | 0000000000000000 |   0  |  -1022   | 0.000000
 Double |         0 | 0000000000000000 |   0  |  -1022   | 0.000000
 Double |         1 | 3FF0000000000000 |   0  |      0   | 1.000000
 Double |        -1 | BFF0000000000000 |   1  |      0   | 1.000000
 Double | 6.674e-11 | 3DD25868F4DEAE16 |   0  |    -34   | 1.146584
 Double |     1e+38 | 47D2CED32A16A1B1 |   0  |    126   | 1.175494
 Double |     1e+39 | 48078287F49C4A1D |   0  |    129   | 1.469368
 Double |     1e-38 | 380B38FB9DAA78E4 |   0  |   -127   | 1.701412
 Double |     1e-39 | 37D5C72FB1552D83 |   0  |   -130   | 1.361129
 Double |    1e+308 | 7FE1CCF385EBC8A0 |   0  |   1023   | 1.112537
 Double |    1e-308 | 000730D67819E8D2 |   0  |  -1022   | 0.449423
 Double |    1e-309 | 0000B8157268FDAF |   0  |  -1022   | 0.044942
```
These are some notes about the results:
* Zero in IEEE 754 can have a positive or negative sign. The zero passed to the **print_double** function in the second row of the table containing the **Double** type is preceded with a minus sign, but the sign is ignored during the conversion to floating-point.
* The value **1.0e309** is not shown because using it causes a compile-time error: floating constant is out of range.
* Zero is represented as a mantissa of zero and a biased exponent of zero.
* The last two rows contain numbers that cannot be represented with an implicit leading 1 bit because the exponent would underflow. These numbers are called **subnormals**, and contain the special biased exponent of 0. Subnormals have reduced precision because not all bits of the mantissa contain meaningful digits.
* Numerically, subnormal doubles actually use a biased exponent of 1, which translates to an unbiased exponent of -1022.