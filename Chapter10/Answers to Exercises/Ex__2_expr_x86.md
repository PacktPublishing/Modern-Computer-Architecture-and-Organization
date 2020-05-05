__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 10, Exercise 2

Write an x86 assembly language program that computes the following expression and prints the result as a hexadecimal number: {(129 – 66) &times; (445 + 136)} &div; 3. As part of this program, create a callable function to print one byte as two hex digits.

# Answer
Create your assembly language source file. See [Ex__2_expr_x86.asm](src/Ex__2_expr_x86.asm) for an example solution to this exercise.
 
Open the **x86 Native Tools Command Prompt for VS 2019** and change to the directory containing your source file.

Build the executable with this command:
```
ml /Fl /Zi /Zd Ex__2_expr_x86.asm
```

This is the output produced by the program:
```
C:\>Ex__2_expr_x86.exe
[(129 - 66) * (445 + 136)] / 3 = 2FA9h
```

This is the listing file created by the build procedure:
```
Microsoft (R) Macro Assembler Version 14.23.28107.0	    01/26/20 20:45:09
Ex__2_expr_x86.asm					     Page 1 - 1


				.386
				.model FLAT,C
				.stack 400h

 00000000			.code
				includelib libcmt.lib
				includelib legacy_stdio_definitions.lib

				extern printf:near
				extern exit:near

				public main
 00000000			main proc
				    ; Print the leading output string
 00000000  68 00000005 R	    push    offset msg1
 00000005  E8 00000000 E	    call    printf

				    ; Compute [(129 – 66) * (445 + 136)] / 3
 0000000A  B8 00000081		    mov     eax, 129
 0000000F  83 E8 42		    sub     eax, 66
 00000012  BB 000001BD		    mov     ebx, 445
 00000017  81 C3 00000088	    add     ebx, 136
 0000001D  66| F7 E3		    mul     bx
 00000020  66| BB 0003		    mov     bx, 3
 00000024  66| F7 F3		    div     bx

				    ; Print the most significant byte
 00000027  50			    push    eax
 00000028  8A DC		    mov     bl, ah
 0000002A  E8 00000017		    call    print_byte

				    ; Print the least significant byte
 0000002F  5B			    pop     ebx
 00000030  E8 00000011		    call    print_byte

				    ; Print the trailing output string    
 00000035  68 00000027 R	    push    offset msg2
 0000003A  E8 00000000 E	    call    printf

 0000003F  6A 00		    push    0
 00000041  E8 00000000 E	    call    exit
 00000046			main endp

				; Pass the byte to be printed in ebx
 00000046			print_byte proc
				    ; x86 function prologue
 00000046  55			    push    ebp
 00000047  8B EC		    mov     ebp, esp
				    
				    ; Use the C library printf function
 00000049  81 E3 000000FF	    and     ebx, 0ffh
 0000004F  53			    push    ebx
 00000050  68 00000000 R	    push    offset fmt_str
 00000055  E8 00000000 E	    call    printf

				    ; x86 function epilogue    
 0000005A  8B E5		    mov     esp, ebp
 0000005C  5D			    pop     ebp
 0000005D  C3			    ret
 0000005E			print_byte endp

 00000000			.data
 00000000 25 30 32 58 00	fmt_str db "%02X", 0
 00000005 5B 28 31 32 39	msg1    db "[(129 - 66) * (445 + 136)] / 3 = ", 0
	   20 2D 20 36 36
	   29 20 2A 20 28
	   34 34 35 20 2B
	   20 31 33 36 29
	   5D 20 2F 20 33
	   20 3D 20 00
 00000027 68 09			msg2    db "h", 9

				end


Microsoft (R) Macro Assembler Version 14.23.28107.0	    01/26/20 20:45:09
Ex__2_expr_x86.asm					     Symbols 2 - 1




Segments and Groups:

                N a m e                 Size     Length   Align   Combine Class

FLAT . . . . . . . . . . . . . .	GROUP
STACK  . . . . . . . . . . . . .	32 Bit	 00000400 DWord	  Stack	  'STACK'	 
_DATA  . . . . . . . . . . . . .	32 Bit	 00000029 DWord	  Public  'DATA'	
_TEXT  . . . . . . . . . . . . .	32 Bit	 0000005E DWord	  Public  'CODE'	


Procedures, parameters, and locals:

                N a m e                 Type     Value    Attr

main . . . . . . . . . . . . . .	P Near	 00000000 _TEXT	Length= 00000046 Public C
print_byte . . . . . . . . . . .	P Near	 00000046 _TEXT	Length= 00000018 Public C


Symbols:

                N a m e                 Type     Value    Attr

@CodeSize  . . . . . . . . . . .	Number	 00000000h   
@DataSize  . . . . . . . . . . .	Number	 00000000h   
@Interface . . . . . . . . . . .	Number	 00000001h   
@Model . . . . . . . . . . . . .	Number	 00000007h   
@code  . . . . . . . . . . . . .	Text   	 _TEXT
@data  . . . . . . . . . . . . .	Text   	 FLAT
@fardata?  . . . . . . . . . . .	Text   	 FLAT
@fardata . . . . . . . . . . . .	Text   	 FLAT
@stack . . . . . . . . . . . . .	Text   	 FLAT
exit . . . . . . . . . . . . . .	L Near	 00000000 FLAT	External C
fmt_str  . . . . . . . . . . . .	Byte	 00000000 _DATA	
msg1 . . . . . . . . . . . . . .	Byte	 00000005 _DATA	
msg2 . . . . . . . . . . . . . .	Byte	 00000027 _DATA	
printf . . . . . . . . . . . . .	L Near	 00000000 FLAT	External C

	   0 Warnings
	   0 Errors
```