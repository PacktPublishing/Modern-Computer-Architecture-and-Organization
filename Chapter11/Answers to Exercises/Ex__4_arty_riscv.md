__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 11, Exercise 4

Program an Arty A7-35T board with a RISC-V processor image. Build and run the **hello** assembly language program shown in the *RISC-V assembly language* section in this chapter on the RISC-V processor using the Olimex ARM-TINY-USB-H debugger as described in the *Implementing RISC-V in an FPGA* section near the end of this chapter. Verify the program outputs the text **Hello, Computer Architect!**

# Answer
The instructions in this answer are based on information provided at https://github.com/sifive/freedom, with some updates to work with more recent versions of libraries. Several of these steps are quite time consuming and the entire process may take several hours.

Steps 1-11 build a RISC-V firmware image in a file named **E300ArtyDevKitFPGAChip.mcs**. If you prefer to skip these steps, you can download [E300ArtyDevKitFPGAChip.mcs](src/E300ArtyDevKitFPGAChip.mcs) directly and continue at step 12.

1. If you already have a Linux system available for this exercise, you can skip to step 2. Otherwise, begin by downloading and installing **VirtualBox** from https://www.virtualbox.org/wiki/Downloads. Download an operating system image from OSBoxes at https://www.osboxes.org/virtualbox-images/. Select the most recent 64-bit Ubuntu VDI image. Follow the instructions at https://www.osboxes.org/guide/ to set up the virtual machine image and get logged in to Linux.

1. Install and license Vivado in the Linux virtual machine. See the solution to [Chapter 2, Exercise 3](../../Chapter02/Answers%20to%20Exercises/Ex__3_vhdl_setup.md) for Vivado installation instructions for Windows. You can expect some minor differences because you are now installing on Linux.

1. Execute the following commands to update the Linux operating system and install the SiFive RISC-V development kit:
```
sudo apt update
sudo apt upgrade
sudo apt install git
cd ~
git clone https://github.com/sifive/freedom.git
cd freedom
git submodule update --init --recursive
```

4. Install additional required tools:
```
sudo apt-get install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev libusb-1.0-0-dev gawk
build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev device-tree-compiler pkg-config
libexpat-dev python wget
sudo apt-get install default-jre
```

5. Build and install **sbt**, the Scala Build Tool:
```
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get update
sudo apt-get install sbt
```

6. Build and install **verilator**, a Verilog HDL simulator:
```
sudo apt-get install git make autoconf g++ flex bison
git clone http://git.veripool.org/git/verilator
cd verilator
unset VERILATOR_ROOT
autoconf
./configure
make -j `nproc`
sudo make install
```

7. Install **scala**, an object-oriented programming language influenced by Java:
```
sudo apt install scala
```

8. Download the RISC-V toolchain from https://www.sifive.com/boards/. Select the **GNU Embedded Toolchain for Ubuntu**. Unzip the file as follows:
```
cd ~
tar xvf Downloads/riscv64-unknown-elf-gcc-8.3.0-2019.08.0-x86_64-linux-ubuntu14.tar.gz
```

9. Set environment variables for Vivado. Place these commands in your **~/.bashrc** file to set them automatically each time you log back in. Use your own directory paths if different:
```
export RISCV=/home/osboxes/riscv64-unknown-elf-gcc-8.3.0-2019.08.0-x86_64-linux-ubuntu14
export PATH=${PATH}:/tools/Xilinx/Vivado/2019.2/bin
```

10. Download the Digilent board files from https://github.com/Digilent/vivado-boards/archive/master.zip. Open the zip file in the Linux File Manager and navigate to the /vivado-boards-master/new/board_files/ directory. Copy the entire contents of this directory. Paste the copied contents into /tools/Xilinx/Vivado/2019.2/data/boards/board_files.

11. The RISC-V design is programmed in the [Chisel](https://www.chisel-lang.org/) language. The first **make** command, as follows, compiles the RISC-V chisel code into Verilog HDL. The second **make** command uses Vivado to compile the Verilog into an FPGA binary image. Build the Arty A7-35T RISC-V image with these commands:
```
cd ~/freedom
make -f Makefile.e300artydevkit verilog
sudo ln -s /usr/lib/x86_64-linux-gnu/libtinfo.so.6 /usr/lib/x86_64-linux-gnu/libtinfo.so.5
make -f Makefile.e300artydevkit mcs
```

When this step completes, the output file is located at **~/freedom/builds/e300artydevkit/obj/E300ArtyDevKitFPGAChip.mcs**

12. Copy the **E300ArtyDevKitFPGAChip.mcs** file to the Windows host. Follow the instructions at  https://www.sifive.com/documentation/freedom-soc/freedom-e300-arty-fpga-dev-kit-getting-started-guide/ to connect the Olimex debugger to the Arty A7 board and flash the **E300ArtyDevKitFPGAChip.mcs** file onto the board.

13. Close Vivado and shut down the Ubuntu virtual machine. Start FreedomStudio in your Windows (or Linux) host. Keep the Arty A7 USB cable connected to the host computer and keep the Olimex debugger connected to the host.

14. Select **Create a new Freedom E SDK Software Project** in the FreedomStudio **SiFive Tools** menu. Select **freedom-e310-arty** as the target. Select **hello** as the example program. Click **Finish** to create the project and start a build.

15. After the build completes, a dialog titled **Edit configuration and launch** will appear. Click **Debug** to download the executable image to the Arty A7. If you watch the red LED on the cable side of the Olimex device you should see some flickering as the download progresses.

16. Open the Windows **Device Manager** (type *device* into the Windows Search box and select **Device Manager** from the list). Under **Ports (COM & LPT)** identify the COM port number of the Arty, which will be named **USB Serial Port**.

17. In FreedomStudio, close any COM Console windows that are open.

18. In FreedomStudio, click the icon that looks like a screen to create a new COM Console window. In the **Choose terminal** field select *Serial terminal*. Set the serial port to the port you identified in **Device Manager**. Set the baud rate to 57600. Click OK to open the console window.

19. Click the mouse cursor inside the FreedomStudio window containing C source code. Press **F6** to single-step the C program. The text *Hello, World!* should appear in the console window. This is output from the program running on the RISC-V processor implemented in the Arty A7 FPGA.
