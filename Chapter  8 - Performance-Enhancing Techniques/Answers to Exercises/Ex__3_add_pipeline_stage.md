__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing.
# Chapter 8, Exercise 3

A processor has a 4-stage pipeline with maximum delays of 0.8, 0.4, 0.6, and 0.3 nanoseconds in stages 1-4, respectively. If the first stage is replaced with two stages that have maximum delays of 0.5 and 0.3 nanoseconds respectively, how much will the processor clock speed increase in percentage terms?

# Answer
The maximum clock speed is determined by the slowest pipeline stage. The 4-stage pipeline has a slowest stage that takes 0.8 ns. The maximum clock frequency is 1 &divide; (0.8 &times; 10<sup>-9</sup>) = 1.25 GHz.

The 5-stage pipeline has a slowest stage of 0.6 ns. The maximum clock frequency is 1 &divide; (0.6 &times; 10<sup>-9</sup>) = 1.667 GHz.

The clock frequency increase resulting from the addition of the pipeline stage is 100 &times; (1.667 &times; 10<sup>9</sup> - 1.25 &times; 10<sup>9</sup>) &divide; (1.25 &times; 10<sup>9</sup>) = **33.3%.**
