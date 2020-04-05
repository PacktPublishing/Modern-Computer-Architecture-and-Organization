__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing.
# Chapter 1 - Introducing Computer Architecture

The architecture of automated computing devices has evolved from mechanical systems
constructed nearly two centuries ago to the broad array of modern electronic computing
technologies we use directly and indirectly every day. Along the way, there have been
stretches of incremental technological improvement interspersed with disruptive advances
that have drastically altered the trajectory of the industry. These trends can be expected
to continue into the future.

In past decades, the 1980s, for example, students and technical professionals eager to learn
about computing devices had a limited range of subject matter available for this purpose.
If they had a computer of their own, it might have been an IBM PC or an Apple II. If
they worked for an organization with a computing facility, they might have used an IBM
mainframe or a Digital Equipment Corporation VAX minicomputer. These examples, and
a limited number of similar systems, encompassed most people's exposure to computer
systems of the time.

Today, numerous specialized computing architectures exist to address widely varying user
needs. We carry miniature computers in our pockets and purses that can place phone
calls, record video, and function as full participants on the internet. Personal computers
remain popular in a format outwardly similar to the PCs of past decades. Today's PCs,
however, are orders of magnitude more capable than the first generations of PCs in
terms of computing power, memory size, disk space, graphics performance, and
communication capability.

Companies offering web services to hundreds of millions of users construct vast
warehouses filled with thousands of closely coordinated computer systems capable
of responding to a constant stream of requests with extraordinary speed and precision.
Machine learning systems are trained through the analysis of enormous quantities
of data to perform complex activities, such as driving automobiles.

This chapter begins by presenting a few key historical computing devices and the leaps in
technology associated with them. This chapter will examine modern-day trends related
to technological advances and introduce the basic concepts of computer architecture,
including a close look at the 6502 microprocessor. These topics will be covered:
* The evolution of automated computing devices  
* Moore’s law
* Computer architecture

# Chapter Files

The following 6502 assembly code snippets appear in Table 1.4:

File | Description
---- | -----------
[add-with-no-carry.asm](src/add-with-no-carry.asm) | 8-bit addition with no Carry input.
[add-with-carry.asm](src/add-with-carry.asm) | 8-bit addition with a Carry input.
[subtract-with-no-borrow.asm](src/subtract-with-no-borrow.asm) | 8-bit subtraction with no Borrow input. 
[subtract-with-borrow.asm](src/subtract-with-borrow.asm) | 8-bit subtraction with a Borrow input. 
[add-with-unsigned-overflow.asm](src/add-with-unsigned-overflow.asm) | Addition with unsigned overflow. 
[subtract-with-unsigned-underflow.asm](src/subtract-with-unsigned-underflow.asm) | Subtraction with unsigned underflow.
[add-with-signed-overflow.asm](src/add-with-signed-overflow.asm) | Addition with signed overflow. 
[subtract-with-signed-underflow.asm](src/subtract-with-signed-underflow.asm) | Subtraction with signed underflow. 

Try running this code at https://skilldrick.github.io/easy6502/

# Answers to Exercises
[Answers to Exercises](Answers%20to%20Exercises/README.md)