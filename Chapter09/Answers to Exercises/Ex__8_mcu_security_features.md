__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing.
# Chapter 9, Exercise 8

What security features do the i.MX RT1060 processors support? 

# Answer
Chapter 6 in the reference manual describes the system security components. Some of the key features are:
* Secure boot, enforcing digital signature verification of an encrypted code image.
* On-chip, one-time programmable ROM for storing security-related information.
* Hardware cryptographic coprocessor supporting the AES-128, SHA-1, and SHA-256 encryption algorithms.
* True random number generator for creating secure cryptographic keys.
* JTAG debug controller with password-enabled secure debug capability.
* Memory interface supporting on-the-fly decryption of encrypted ROM instruction data.
