__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 4, Exercise 2

A 16 gigabit DRAM integrated circuit has two bank group selection inputs, two bank selection inputs, and 17 row address inputs. How many bits are in each row of a bank in this device?

# Answer
The DRAM circuit contains 16 gigabits = 16 &times; 2<sup>30</sup> bits

The number of address bits is 2 bank group bits + 2 bank bits + 17 row address bits = 21 bits

The row dimension of each bank is therefore (16 &times; 2<sup>30</sup>) &divide; 2<sup>21</sup> = **8192 bits**
