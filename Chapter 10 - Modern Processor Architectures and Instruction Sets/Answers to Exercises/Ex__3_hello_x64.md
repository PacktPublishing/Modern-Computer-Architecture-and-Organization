__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 10, Exercise 3

In the Windows search box in the Task Bar, begin typing **x64 Native Tools Command Prompt for VS 2019**. When the app appears in the search menu, select it to open a command prompt.

Create a file name **hello_x64.asm** with the content shown in the source listing in the **x64 assembly language** section of this chapter.

Build the program using the command shown in the **x64 assembly language** section of this chapter and run it. Verify the output **Hello, Computer Architect!** appears on the screen.

# Answer
Create your assembly language source file. See [Ex__3_hello_x64.asm](src/Ex__3_hello_x64.asm) for an example solution to this exercise.
 
Open the **x64 Native Tools Command Prompt for VS 2019** and change to the directory containing your source file.
 
Build the executable with this command:
```
ml64 /Fl /Zi /Zd Ex__3_hello_x64.asm
```

This is the output produced by the program:
```
C:\>Ex__3_hello_x64.exe
Hello, Computer Architect!
```

This is the listing file created by the build procedure:
```
Microsoft (R) Macro Assembler (x64) Version 14.24.28314.0   01/15/20 18:44:39
Ex__3_hello_x64.asm					     Page 1 - 1


 00000000			.code
				includelib libcmt.lib
				includelib legacy_stdio_definitions.lib

				extern printf:near
				extern exit:near

				public main
 00000000			main proc
				    ; Reserve stack space
 00000000  48/ 83 EC 28		    sub     rsp, 40
				    
				    ; Print the message
 00000004  48/ 8D 0D		    lea     rcx, message
	   00000000 R
 0000000B  E8 00000000 E	    call    printf
				    
				    ; Exit the program with status 0
 00000010  48/ 33 C9		    xor     rcx, rcx
 00000013  E8 00000000 E	    call    exit
 00000018			main endp

 00000000			.data
 00000000 48 65 6C 6C 6F	message db "Hello, Computer Architect!",0
	   2C 20 43 6F 6D
	   70 75 74 65 72
	   20 41 72 63 68
	   69 74 65 63 74
	   21 00

				end


Microsoft (R) Macro Assembler (x64) Version 14.24.28314.0   01/15/20 18:44:39
Ex__3_hello_x64.asm					     Symbols 2 - 1




Procedures, parameters, and locals:

                N a m e                 Type     Value    Attr

main . . . . . . . . . . . . . .	P 	 00000000 _TEXT	Length= 00000018 Public


Symbols:

                N a m e                 Type     Value    Attr

exit . . . . . . . . . . . . . .	L 	 00000000 _TEXT	External
message  . . . . . . . . . . . .	Byte	 00000000 _DATA	
printf . . . . . . . . . . . . .	L 	 00000000 _TEXT	External

	   0 Warnings
	   0 Errors
```
