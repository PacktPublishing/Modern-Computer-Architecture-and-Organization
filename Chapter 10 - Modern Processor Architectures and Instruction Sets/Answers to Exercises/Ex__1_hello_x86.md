__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 10, Exercise 1

Install the free Visual Studio Community edition, available at https://visualstudio.microsoft.com/vs/community/, on a Windows PC. After installation is complete, open the Visual Studio IDE and select **Get Tools and Features…** under the **Tools** menu. Install the **Desktop development with C++** workload.

In the Windows search box in the Task Bar, start typing **x86 Native Tools Command Prompt for VS 2019**. When the app appears in the search menu, select it to open a command prompt.
Create a file name **hello_x86.asm** with the content shown in the source listing in the **x86 assembly language** section of this chapter.

Build the program using the command shown in the **x86 assembly language** section of this chapter and run it. Verify the output **Hello, Computer Architect!** appears on the screen.


# Answer
Install Visual Studio Community as described in the exercise description above, then install the **Desktop development with C++** workload within Visual Studio Community.

Create your assembly language source file. See [Ex__1_hello_x86.asm](src/Ex__1_hello_x86.asm) for an example solution to this exercise.
 
Open the **x86 Native Tools Command Prompt for VS 2019** and change to the directory containing your source file.
 
Build the executable with this command:
```
ml /Fl /Zi /Zd Ex__1_hello_x86.asm
```

Run the executable with this command:
```
C:\>Ex__1_hello_x86.executable
```

The following output should appear:
```
Hello, Computer Architect!
```
