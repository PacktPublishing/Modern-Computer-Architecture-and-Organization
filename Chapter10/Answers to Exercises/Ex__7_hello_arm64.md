__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 10, Exercise 7

Locate the following files under the Android SDK installation directory (the default location is under %LOCALAPPDATA%\Android) and add their directories to your PATH environment variable: **aarch64-linux-android-as.exe** and **adb.exe**. Hint: The following command works for one version of Android Studio (your path may vary):
```
set PATH=%PATH%;%LOCALAPPDATA \Android\sdk\ndk-bundle\toolchains\arm-linux-androideabi-4.9\prebuilt\windows-x86_64\bin;%LOCALAPPDATA%\Android\Sdk\platform-tools
```
Create a file name **hello_arm64.s** with the content shown in the source listing in the **64-bit ARM assembly language** section of this chapter.

Build the program using the commands shown in the **64-bit ARM assembly language** section of this chapter.

Enable **Developer Options** on an Android phone or tablet.

Connect your Android device to the computer with a USB cable.

Copy the program executable image to the phone using the commands shown in the **64-bit ARM assembly language** section of this chapter and run the program. Verify the output **Hello, Computer Architect!** appears on the host computer screen.

# Answer
Create your assembly language source file. See [Ex__7_hello_arm64.s](src/Ex__7_hello_arm64.s) for an example solution to this exercise.
 
Build the executable with these commands:
```
aarch64-linux-android-as -al=Ex__7_hello_arm64.lst -o Ex__7_hello_arm64.o Ex__7_hello_arm64.s
aarch64-linux-android-ld -o Ex__7_hello_arm64 Ex__7_hello_arm64.o
```

This is the output produced by copying the program to an Android device and running it:
```
C:\>adb devices
* daemon not running; starting now at tcp:5037
* daemon started successfully
List of devices attached
9826f541374f4b4a68      device


C:\>adb push Ex__7_hello_arm64 /data/local/tmp/Ex__7_hello_arm64
Ex__7_hello_arm64: 1 file pushed. 0.0 MB/s (1152 bytes in 0.029s)

C:\>adb shell chmod +x /data/local/tmp/Ex__7_hello_arm64
C:\>adb shell /data/local/tmp/Ex__7_hello_arm64
Hello, Computer Architect!
```

This is the listing file created by the build procedure:
```
AARCH64 GAS  Ex__7_hello_arm64.s 			page 1


   1              	.text
   2              	.global _start
   3              	
   4              	_start:
   5              	    // Print the message to file 1 (stdout) with syscall 64
   6 0000 200080D2 	    mov     x0, #1
   7 0004 E1000058 	    ldr     x1, =msg
   8 0008 420380D2 	    mov     x2, #msg_len
   9 000c 080880D2 	    mov     x8, #64
  10 0010 010000D4 	    svc     0
  11              	
  12              	    // Exit the program with syscall 93, returning status 0
  13 0014 000080D2 	    mov     x0, #0
  14 0018 A80B80D2 	    mov     x8, #93
  15 001c 010000D4 	    svc     0
  16              	    
  17              	.data
  18              	msg:
  19 0000 48656C6C 	    .ascii      "Hello, Computer Architect!"
  19      6F2C2043 
  19      6F6D7075 
  19      74657220 
  19      41726368 
  20              	msg_len = . - msg
```
