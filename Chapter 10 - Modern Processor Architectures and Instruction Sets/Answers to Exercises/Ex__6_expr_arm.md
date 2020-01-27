__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 10, Exercise 6

Write a 32-bit ARM assembly language program that computes the following expression and prints the result as a hexadecimal number: {(129 – 66) &times; (445 + 136)} &div; 3. As part of this program, create a callable function to print one byte as two hex digits.

# Answer
Create your assembly language source file. See [Ex__6_expr_arm.s](src/Ex__6_expr_arm.s) for an example solution to this exercise.
 
Build the executable with these commands:
```
arm-linux-androideabi-as -al=Ex__6_expr_arm.lst -o Ex__6_expr_arm.o Ex__6_expr_arm.s
arm-linux-androideabi-ld -o Ex__6_expr_arm Ex__6_expr_arm.o
```

This is the output produced by copying the program to an Android device and running it:
```
C:\>adb devices
* daemon not running; starting now at tcp:5037
* daemon started successfully
List of devices attached
9826f541374f4b4a68      device


C:\>adb push Ex__6_expr_arm /data/local/tmp/Ex__6_expr_arm
Ex__6_expr_arm: 1 file pushed. 0.2 MB/s (1188 bytes in 0.007s)

C:\>adb shell chmod +x /data/local/tmp/Ex__6_expr_arm
C:\>adb shell /data/local/tmp/Ex__6_expr_arm
[(129 - 66) * (445 + 136)] / 3 = 2FA9h
```

This is the listing file created by the build procedure:
```
ARM GAS  Ex__6_expr_arm.s 			page 1


   1              	.text
   2              	.global _start
   3              	
   4              	_start:
   5              	    // Print the leading output string
   6 0000 A8109FE5 	    ldr     r1, =msg1
   7 0004 2120A0E3 	    mov     r2, #msg1_len
   8 0008 110000EB 	    bl      print_string
   9              	
  10              	    // Compute [(129 – 66) * (445 + 136)] / 3
  11 000c 8100A0E3 	    mov     r0, #129
  12 0010 420040E2 	    sub     r0, r0, #66
  13 0014 98109FE5 	    ldr     r1, =#445
  14 0018 881081E2 	    add     r1, r1, #136
  15 001c 910000E0 	    mul     r0, r1, r0
  16 0020 0310A0E3 	    mov     r1, #3
  17 0024 10F130E7 	    udiv    r0, r0, r1
  18              	
  19              	    // Print the upper byte of the result
  20 0028 04002DE5 	    push    {r0}
  21 002c 2004A0E1 	    lsr     r0, r0, #8
  22 0030 100000EB 	    bl      print_byte
  23              	
  24              	    // Print the lower byte of the result    
  25 0034 04009DE4 	    pop     {r0}
  26 0038 0E0000EB 	    bl      print_byte
  27              	    
  28              	    // Print the trailng output string
  29 003c 74109FE5 	    ldr     r1, =msg2
  30 0040 0120A0E3 	    mov     r2, #msg2_len
  31 0044 020000EB 	    bl      print_string
  32              	    
  33              	    // Exit the program with syscall 1, returning status 0
  34 0048 0000A0E3 	    mov     r0, #0
  35 004c 0170A0E3 	    mov     r7, #1
  36 0050 000000EF 	    svc     0
  37              	
  38              	// Print a string; r1=string address, r2=string length
  39              	print_string:
  40 0054 0100A0E3 	    mov     r0, #1
  41 0058 0470A0E3 	    mov     r7, #4
  42 005c 000000EF 	    svc     0
  43 0060 0EF0A0E1 	    mov     pc, lr
  44              	
  45              	// Convert the low 4 bits of r0 to an ascii character in r0
  46              	nibble2ascii:
  47 0064 0F0000E2 	    and     r0, #0xF
  48 0068 0A0050E3 	    cmp     r0, #10
  49 006c 37008052 	    addpl   r0, r0, #('A' - 10)
  50 0070 30008042 	    addmi   r0, r0, #'0'
  51 0074 0EF0A0E1 	    mov     pc, lr
  52              	
  53              	// Print a byte in hex    
  54              	print_byte:
  55 0078 04E02DE5 	    push    {lr}
  56 007c 04002DE5 	    push    {r0}
  57 0080 2002A0E1 	    lsr     r0, r0, #4


ARM GAS  Ex__6_expr_arm.s 			page 2


  58 0084 F6FFFFEB 	    bl      nibble2ascii
  59 0088 2C109FE5 	    ldr     r1, =bytes
  60 008c 0100C1E4 	    strb    r0, [r1], #1
  61              	
  62 0090 04009DE4 	    pop     {r0}
  63 0094 F2FFFFEB 	    bl      nibble2ascii
  64 0098 0000C1E5 	    strb    r0, [r1]
  65              	
  66 009c 18109FE5 	    ldr     r1, =bytes
  67 00a0 0220A0E3 	    mov     r2, #2
  68 00a4 EAFFFFEB 	    bl      print_string
  69              	    
  70 00a8 04E09DE4 	    pop     {lr}
  71 00ac 0EF0A0E1 	    mov     pc, lr
  72              	        
  73              	.data
  74              	msg1:
  75 0000 5B283132 	    .ascii  "[(129 - 66) * (445 + 136)] / 3 = "
  75      39202D20 
  75      36362920 
  75      2A202834 
  75      3435202B 
  76              	msg1_len = . - msg1
  77              	
  78              	bytes:
  79 0021 3F3F     	    .ascii  "??"
  80              	
  81              	msg2:
  82 0023 68       	    .ascii  "h"
  83              	msg2_len = . - msg2
```
