__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 10, Exercise 1

Search the internet for free VHDL development software suites that include a simulator. Get one of these suites, set it up, and build any simple demo projects that come with the suite to ensure it is working properly.

# Answer
Some freely available VHDL development suites are listed below:
* Xilinx Vivado Design Suite is available at https://www.xilinx.com/support/download.html
* Intel® Quartus® Prime Software Lite Edition is available at  https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/download.html
* The open source GHDL simulator for VHDL is available at https://github.com/ghdl/ghdl
* Mentor ModelSim PE Student Edition is available at https://www.mentor.com/company/higher_ed/modelsim-student-edition

**Vivado Design Suite** will be used for the examples in this chapter and in following chapters, including installing circuit designs in a low cost FPGA development board. These steps describe the installation and setup process for Windows 10:

1. Visit https://www.microsoft.com/en-us/download/details.aspx?id=12654 and download the installer for Microsoft Macro Assembler (MASM).
1. Run the installer 
4. Select the tool suite you want to install. The examples in this book use Vivado. Select **Vivado** and click __Next__.
5. Select **Vivado HL WebPack** (this is the free version). Click __Next__.
6. Accept the default design tools, devices, and installation options for Vivado HL Webpack. Click __Next__.
7. Accept the default installation directory and other options. Click __Next__.
8. On the __Installation Summary__ page, click __Install__. Downloading and installation will take some time. The time required depends on your Internet connection speed. Plan for a few hours.

After the installation completes, follow these steps to build an example project:

1. You should find an icon on your desktop with a name similar to **Vivado 2019.2**. Double-click this icon (and not the icon that says **Vivado HLS**) to start the application.
2. In the Vivado main window, click **Open Example Project**.
3. Click through to the **Select Project Template** screen and select **CPU (HDL)**.
4. Click through and accept the defaults on the next screens and click **Finish** to create the project.
5. In the **Project Manager** page you'll find the **Sources** panel. Expand the tree listing and double-click some of the files to open them in the editor. Most of the files in this design are in the Verilog hardware design language.
6. Click **Run Synthesis** in the **Project Manager** panel. The **Design Runs** panel will update the status as synthesis proceeds. This may take several minutes.
7. After synthesis completes, a dialog will appear offering to run the implementation. Click **Cancel**.
8. Click **Run Simulation** in the Vivado main dialog **Project Manager** section, then select **Run behavioral simulation**. This may, again, take several minutes.
9. After the simulation completes you will see a timing diagram in the **Simulation** window showing the simulated CPU signals using the input data provided by the simulation source files.
10. This completes the exercise. You may close Vivado.
