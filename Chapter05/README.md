__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing.
# Chapter 5 - Hardware-Software Interface

The vast majority of computer software is not written at the processor instruction level in
assembly language. Most of the applications we work with on a daily basis are written in
one high-level programming language or another, using a pre-built library of capabilities
that the application programmers extended during the software development process.
Practical programming environments, consisting of high-level languages and their
associated libraries, offer many services, including disk input/output (I/O), network
communication, and interactions with users, all easily accessible from program code.

This chapter describes the software layers that implement these features, beginning at the
level of processor instructions in device drivers. Several key aspects of operating systems
will be covered in this chapter, including booting, multithreading, and multiprocessing.

After completing this chapter, you will understand the services provided by operating
systems and the capabilities provided in **Basic Input/Output System (BIOS)** and
**Unified Extensible Firmware Interface (UEFI)** firmware. You will have learned how
execution threads function at the processor level and how multiple processors coordinate
within a single computer system. You will also have a broad understanding of the process
of booting into an operating system, beginning with the first instruction executed.

We will cover the following topics:
* Device drivers
* BIOS and UEFI
* The boot process
* Operating systems
* Processes and threads
* Multiprocessing

# Chapter Files

[bcdedit output](src/bcdedit_output.md) is an example of the BCD (boot configuration data) information stored on a Windows 10 system.

# Answers to Exercises
[Answers to Exercises](Answers%20to%20Exercises/README.md)