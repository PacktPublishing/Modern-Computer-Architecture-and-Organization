__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing.
# Chapter 10 - Modern Processor Architectures and Instruction Sets

Most modern personal computers contain processors supporting the Intel and AMD x86 32-bit and x64 64-bit architectures. Most smartphones, smart watches, tablets, and many embedded systems contain ARM processors. This chapter examines the registers and instruction sets of these processor families.

When a semiconductor company produces an evolving family of processors over several decades there is an acute need to maintain backward compatibility for code written for earlier processor generations. This requirement for legacy support tends to increase the complexity of later-generation processors and forces them to implement some features and behaviors that certainly would not be present had there been no need to support old code. This chapter will avoid discussing most of the complex legacy attributes of these processor architectures, but you should be aware those features exist.

After completing this chapter, you will understand the top-level architectures and unique attributes of the x86, x64, 32-bit ARM, and 64-bit ARM registers, instruction set, assembly language, and some aspects of legacy feature support in these architectures.

The following topics will be covered in this chapter:
* x86 architecture and instruction set
* x64 architecture and instruction set
* 32-bit ARM architecture and instruction set
* 64-bit ARM architecture and instruction set

# Chapter files

[hello_x86.asm](src/hello_x86.asm) is the 32-bit x86 **hello** assembly language program.

[hello_x64.asm](src/hello_x64.asm) is the 64-bit x64 **hello** assembly language program.

[hello_arm.s](src/hello_arm.s) is the 32-bit ARM **hello** assembly language program.

[hello_arm64.s](src/hello_arm64.s) is the 64-bit ARM **hello** assembly language program.

# Answers to Exercises
[Answers to Exercises](Answers%20to%20Exercises/README.md)