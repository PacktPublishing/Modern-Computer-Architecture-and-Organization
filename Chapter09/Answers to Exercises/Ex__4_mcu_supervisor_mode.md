__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing.
# Chapter 9, Exercise 4

Do the i.MX RT1060 processors support the concept of supervisor mode instruction execution? Explain your answer.

# Answer
Performing a search for **supervisor** in the i.MX RT1060 processor reference manual produces a few hits. However, all of these usages refer to access restrictions related to a particular subsystem, such as the FLEXCAN module.

Supervisor mode in the i.MX RT1060 processor does not operate at the instruction execution level, so **these processors do not implement supervisor mode instruction execution** as described in Chapter 9.