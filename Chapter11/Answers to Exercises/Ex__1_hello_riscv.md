__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 11, Exercise 1

Visit https://www.sifive.com/boards/ and download *Freedom Studio*. Freedom Studio is an Eclipse IDE-based development suite with a complete set of tools for building a RISC-V application and running it on a hardware RISC-V processor or in the emulation environment included with Freedom Studio. Follow the instructions in the *Freedom Studio User Manual* to complete the installation. Start Freedom Studio and create a new Freedom E SDK project. In the project creation dialog, select **qemu-sifive-u54** as the target (this is a single-core 64-bit RISC-V processor in the RV64GC configuration). Select the **hello** example program and click on the **Finish** button. This will start a build of the example program and the RISC-V emulator. After the build completes, the **Edit Configuration** dialog box will appear. Click on **Debug** to start the program in the emulator debug environment. Single-step through the program and verify the text *Hello, World!* appears in the Console window.


# Answer
Install Freedom Studio as described above. Note that the directory path for your workspace cannot include spaces.

Start Freedom Studio.

In the **Welcome to SiFive FreedomStudio! Let's Get Started...** dialog, select **I want to create a new Freedom E SDK Project**

In the **Create a Freedom E SDK Project** dialog, select **qemu-sifive-u54** as the target.

Select the **hello** example program.

Click the **Finish** button.

After the build completes, the **Edit Configuration** dialog box will appear.

Click **Debug** to start the program in the emulator debug environment.

Single-step through the program and verify the text *Hello, World!* appears in the Console window.