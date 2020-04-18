__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 10, Exercise 1

Install the free Visual Studio Community edition, available at https://visualstudio.microsoft.com/vs/community/, on a Windows PC. After installation is complete, open the Visual Studio IDE and select **Get Tools and Features…** under the **Tools** menu. Install the **Desktop development with C++** workload.

In the Windows search box in the Task Bar, start typing **x86 Native Tools Command Prompt for VS 2019**. When the app appears in the search menu, select it to open a command prompt.

Create a file name **hello_x86.asm** with the content shown in the source listing in the **x86 assembly language** section of this chapter.

Build the program using the command shown in the **x86 assembly language** section of this chapter and run it. Verify the output **Hello, Computer Architect!** appears on the screen.


# Answer
Install Visual Studio Community as described in the question, then install the **Desktop development with C++** workload within Visual Studio Community.

Create your assembly language source file. See [Ex__1_hello_x86.asm](src/Ex__1_hello_x86.asm) for an example solution to this exercise.
 
Open the **x86 Native Tools Command Prompt for VS 2019** and change to the directory containing your source file.
 
Build the executable with this command:
```
ml /Fl /Zi /Zd Ex__1_hello_x86.asm
```

This is the output produced by the program:
```
C:\>Ex__1_hello_x86.exe
Hello, Computer Architect!
```

This is the listing file created by the build procedure:
```
Microsoft (R) Macro Assembler Version 14.24.28314.0	    01/15/20 18:40:04
Ex__1_hello_x86.asm					     Page 1 - 1


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
				    ; Print the message
 00000000  68 00000000 R	    push    offset message
 00000005  E8 00000000 E	    call    printf
				    
				    ; Exit the program with status 0
 0000000A  6A 00		    push    0
 0000000C  E8 00000000 E	    call    exit
 00000011			main endp

 00000000			.data
 00000000 48 65 6C 6C 6F	message db "Hello, Computer Architect!",0
	   2C 20 43 6F 6D
	   70 75 74 65 72
	   20 41 72 63 68
	   69 74 65 63 74
	   21 00

				end
                                
                                
Microsoft (R) Macro Assembler Version 14.24.28314.0	    01/15/20 18:40:04
Ex__1_hello_x86.asm					     Symbols 2 - 1




Segments and Groups:

                N a m e                 Size     Length   Align   Combine Class

FLAT . . . . . . . . . . . . . .	GROUP
STACK  . . . . . . . . . . . . .	32 Bit	 00000400 DWord	  Stack	  'STACK'	 
_DATA  . . . . . . . . . . . . .	32 Bit	 0000001B DWord	  Public  'DATA'	
_TEXT  . . . . . . . . . . . . .	32 Bit	 00000011 DWord	  Public  'CODE'	


Procedures, parameters, and locals:

                N a m e                 Type     Value    Attr

main . . . . . . . . . . . . . .	P Near	 00000000 _TEXT	Length= 00000011 Public C


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
message  . . . . . . . . . . . .	Byte	 00000000 _DATA	
printf . . . . . . . . . . . . .	L Near	 00000000 FLAT	External C

	   0 Warnings
	   0 Errors
```
