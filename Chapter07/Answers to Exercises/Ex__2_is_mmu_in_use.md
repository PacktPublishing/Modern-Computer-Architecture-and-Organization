__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 7, Exercise 2

The processor described in Exercise 1 has memory security features that prevent executing code from modifying program instruction memory. The processor uses physical addresses to access instructions and data. Does this processor use an MMU?

# Answer

While the protection of memory regions is a feature of MMUs, the presence of memory protection alone does not mean an MMU is in use. **This processor does not contain an MMU**.

MMUs generally perform virtual-to-physical address translation, which does not occur in the processor described here.
