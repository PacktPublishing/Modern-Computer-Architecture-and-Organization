# Chapter 2, Exercise 3

Search the internet for free VHDL development software suites that include a simulator. Get one of these suites, set it up, and build any simple demo projects that come with the suite to ensure it is working properly.

# Answer
Some freely available VHDL development suites are listed below:
* Xilinx Vivado Design Suite is available at https://www.xilinx.com/support/download.html
* Intel® Quartus® Prime Software Lite Edition is available at  https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/download.html
* The open source GHDL simulator for VHDL is available at https://github.com/ghdl/ghdl
* Mentor ModelSim PE Student Edition is available at https://www.mentor.com/company/higher_ed/modelsim-student-edition

**Vivado Design Suite** will be used for the examples in this chapter and in following chapters, including installing circuit designs in a low cost FPGA development board. These steps describe the installation and setup process for Windows 10:

1. Visit https://www.xilinx.com/support/download.html and select the web installer for the latest version of Vivado Design Suite for Windows. Be sure to select the full Vivado installer, and not an update. During this process you will need to create a Xilinx account if you do not already have one. Be sure to save your username and password for use later.
2. Provide the requested information, download the **Windows Self Extracting Web Installer**, and run it. You may need to change Windows app settings to allow the installer to run.
3. You will be asked to login with you Xilinx account information and accept license agreements.
4. You must select the version you want to install. The examples in this book use Vivado. The Vitis option installs Vivado along with other tools for embedded system development. Select **Vivado** unless you also want to explore the Vitis tools. Click __Next__.
5. Select the **Vivado HL WebPack** (this is the free version). Click __Next__.
6. Accept the default design tools, devices, and installation options for Vivado HL Webpack. Click __Next__.
7. Accept the default installation directory and other options. Click __Next__.
8. On the __Installation Summary__ page, click __Install__.
