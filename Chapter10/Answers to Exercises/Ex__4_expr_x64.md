__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 10, Exercise 4

Write an x64 assembly language program that computes the following expression and prints the result as a hexadecimal number: {(129 – 66) &times; (445 + 136)} &div; 3. As part of this program, create a callable function to print one byte as two hex digits.

# Answer
Create your assembly language source file. See [Ex__4_expr_x64.asm](src/Ex__4_expr_x64.asm) for an example solution to this exercise.
 
Open the **x64 Native Tools Command Prompt for VS 2019** and change to the directory containing your source file.

Build the executable with this command:
```
ml64 /Fl /Zi /Zd Ex__4_expr_x64.asm
```

This is the output produced by the program:
```
C:\>Ex__4_expr_x64.exe
[(129 - 66) * (445 + 136)] / 3 = 2FA9h
```

This is the listing file created by the build procedure:
```
Microsoft (R) Macro Assembler (x64) Version 14.23.28107.0   01/26/20 20:58:00
Ex__4_expr_x64.asm					     Page 1 - 1


 00000000			.code
				includelib libcmt.lib
				includelib legacy_stdio_definitions.lib

				extern printf:near
				extern exit:near

				public main
 00000000			main proc
				    ; Reserve stack space
 00000000  48/ 83 EC 28		    sub     rsp, 40
				    
				    ; Print the leading output string
 00000004  48/ 8D 0D		    lea     rcx, msg1
	   00000005 R
 0000000B  E8 00000000 E	    call    printf

				    ; Compute [(129 – 66) * (445 + 136)] / 3
 00000010  B8 00000081		    mov     eax, 129
 00000015  83 E8 42		    sub     eax, 66
 00000018  BB 000001BD		    mov     ebx, 445
 0000001D  81 C3 00000088	    add     ebx, 136
 00000023  66| F7 E3		    mul     bx
 00000026  66| BB 0003		    mov     bx, 3
 0000002A  66| F7 F3		    div     bx

				    ; Print the most significant byte
 0000002D  50			    push    rax
 0000002E  8A DC		    mov     bl, ah
 00000030  81 E3 000000FF	    and     ebx, 0ffh
 00000036  E8 00000020		    call    print_byte

				    ; Print the least significant byte
 0000003B  5B			    pop     rbx
 0000003C  81 E3 000000FF	    and     ebx, 0ffh
 00000042  E8 00000014		    call    print_byte

				    ; Print the trailing output string    
 00000047  48/ 8D 0D		    lea     rcx, msg2
	   00000027 R
 0000004E  E8 00000000 E	    call    printf

				    ; Exit the program with status 0
 00000053  48/ 33 C9		    xor     rcx, rcx
 00000056  E8 00000000 E	    call    exit
 0000005B			main endp

				; Pass the byte to be printed in ebx
 0000005B			print_byte proc
				    ; x64 function prologue
 0000005B  48/ 83 EC 28		    sub     rsp, 40
				    
				    ; Use the C library printf function
 0000005F  48/ 8B D3		    mov     rdx, rbx
 00000062  48/ 8D 0D		    lea     rcx, fmt_str
	   00000000 R
 00000069  E8 00000000 E	    call    printf

				    ; x64 function epilogue    
 0000006E  48/ 83 C4 28		    add     rsp, 40

 00000072  C3			    ret
 00000073			print_byte endp

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


Microsoft (R) Macro Assembler (x64) Version 14.23.28107.0   01/26/20 20:58:00
Ex__4_expr_x64.asm					     Symbols 2 - 1




Procedures, parameters, and locals:

                N a m e                 Type     Value    Attr

main . . . . . . . . . . . . . .	P 	 00000000 _TEXT	Length= 0000005B Public
print_byte . . . . . . . . . . .	P 	 0000005B _TEXT	Length= 00000018 Public


Symbols:

                N a m e                 Type     Value    Attr

exit . . . . . . . . . . . . . .	L 	 00000000 _TEXT	External
fmt_str  . . . . . . . . . . . .	Byte	 00000000 _DATA	
msg1 . . . . . . . . . . . . . .	Byte	 00000005 _DATA	
msg2 . . . . . . . . . . . . . .	Byte	 00000027 _DATA	
printf . . . . . . . . . . . . .	L 	 00000000 _TEXT	External

	   0 Warnings
	   0 Errors
```