__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 10, Exercise 8

Write a 64-bit ARM assembly language program that computes the following expression and prints the result as a hexadecimal number: {(129 – 66) &times; (445 + 136)} &div; 3. As part of this program, create a callable function to print one byte as two hex digits.

# Answer
Create your assembly language source file. See [Ex__8_expr_arm64.s](src/Ex__8_expr_arm64.s) for an example solution to this exercise.
 
Build the executable with these commands:
```
aarch64-linux-android-as -al=Ex__8_expr_arm64.lst -o Ex__8_expr_arm64.o Ex__8_expr_arm64.s
aarch64-linux-android-ld -o Ex__8_expr_arm64 Ex__8_expr_arm64.o
```

This is the output produced by copying the program to an Android device and running it:
```
C:\>adb devices
* daemon not running; starting now at tcp:5037
* daemon started successfully
List of devices attached
9826f541374f4b4a68      device


C:\>adb push Ex__8_expr_arm64 /data/local/tmp/Ex__8_expr_arm64
Ex__8_expr_arm64: 1 file pushed. 0.1 MB/s (1592 bytes in 0.015s)

C:\>adb shell chmod +x /data/local/tmp/Ex__8_expr_arm64
C:\>adb shell /data/local/tmp/Ex__8_expr_arm64
[(129 - 66) * (445 + 136)] / 3 = 2FA9h
```

This is the listing file created by the build procedure:
```
AARCH64 GAS  Ex__8_expr_arm64.s 			page 1


   1              	.text
   2              	.global _start
   3              	
   4              	_start:
   5              	    // Print the leading output string
   6 0000 C1050058 	    ldr     x1, =msg1
   7 0004 220480D2 	    mov     x2, #msg1_len
   8 0008 13000094 	    bl      print_string
   9              	
  10              	    // Compute [(129 – 66) * (445 + 136)] / 3
  11 000c 201080D2 	    mov     x0, #129
  12 0010 000801D1 	    sub     x0, x0, #66
  13 0014 A13780D2 	    mov     x1, #445
  14 0018 21200291 	    add     x1, x1, #136
  15 001c 207C009B 	    mul     x0, x1, x0
  16 0020 610080D2 	    mov     x1, #3
  17 0024 0008C19A 	    udiv    x0, x0, x1
  18              	
  19              	    // Print the upper byte of the result
  20 0028 F30300AA 	    mov     x19, x0
  21 002c 00FC48D3 	    lsr     x0, x0, #8
  22 0030 14000094 	    bl      print_byte
  23              	
  24              	    // Print the lower byte of the result    
  25 0034 E00313AA 	    mov     x0, x19
  26 0038 12000094 	    bl      print_byte
  27              	    
  28              	    // Print the trailng output string
  29 003c 21040058 	    ldr     x1, =msg2
  30 0040 220080D2 	    mov     x2, #msg2_len
  31 0044 04000094 	    bl      print_string
  32              	    
  33              	    // Exit the program with syscall 93, returning status 0
  34 0048 000080D2 	    mov     x0, #0
  35 004c A80B80D2 	    mov     x8, #93
  36 0050 010000D4 	    svc     0
  37              	
  38              	// Print a string; x1=string address, x2=string length
  39              	print_string:
  40 0054 200080D2 	    mov     x0, #1
  41 0058 080880D2 	    mov     x8, #64
  42 005c 010000D4 	    svc     0
  43 0060 C0035FD6 	    ret     x30
  44              	
  45              	// Convert the low 4 bits of x0 to an ascii character in x0
  46              	nibble2ascii:
  47 0064 000C4092 	    and     x0, x0, #0xF
  48 0068 1F2800F1 	    cmp     x0, #10
  49 006c 64000054 	    bmi     lt10
  50              	    
  51 0070 00DC0091 	    add     x0, x0, #('A' - 10)
  52 0074 02000014 	    b       done
  53              	
  54              	lt10:
  55 0078 00C00091 	    add     x0, x0, #'0'
  56              	
  57              	done:


AARCH64 GAS  Ex__8_expr_arm64.s 			page 2


  58 007c C0035FD6 	    ret     x30
  59              	
  60              	// Print a byte in hex    
  61              	print_byte:
  62 0080 F5031EAA 	    mov     x21, x30
  63 0084 F40300AA 	    mov     x20, x0
  64 0088 00FC44D3 	    lsr     x0, x0, #4
  65 008c F6FFFF97 	    bl      nibble2ascii
  66 0090 C1010058 	    ldr     x1, =bytes
  67 0094 20140038 	    strb    w0, [x1], #1
  68              	
  69 0098 E00314AA 	    mov     x0, x20
  70 009c F2FFFF97 	    bl      nibble2ascii
  71 00a0 20000039 	    strb    w0, [x1]
  72              	
  73 00a4 21010058 	    ldr     x1, =bytes
  74 00a8 420080D2 	    mov     x2, #2
  75 00ac EAFFFF97 	    bl      print_string
  76              	    
  77 00b0 FE0315AA 	    mov     x30, x21
  78 00b4 C0035FD6 	    ret     x30
  79              	        
  80              	.data
  81              	msg1:
  82 0000 5B283132 	    .ascii  "[(129 - 66) * (445 + 136)] / 3 = "
  82      39202D20 
  82      36362920 
  82      2A202834 
  82      3435202B 
  83              	msg1_len = . - msg1
  84              	
  85              	bytes:
  86 0021 3F3F     	    .ascii  "??"
  87              	
  88              	msg2:
  89 0023 68       	    .ascii  "h"
  90              	msg2_len = . - msg2
```
