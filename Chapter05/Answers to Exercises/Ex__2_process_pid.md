__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 5, Exercise 2
Run the appropriate command on your computer to display the currently running processes. What is the PID of the process you are using to run this command?

# Answer
In Windows, open a command prompt (type **command** in the Windows Search box to locate the application) and type the **tasklist** command as follows.

```
C:\>tasklist

Image Name                     PID Session Name        Session#    Mem Usage
========================= ======== ================ =========== ============
System Idle Process              0 Services                   0          8 K
System                           4 Services                   0      9,840 K
Registry                       120 Services                   0     85,324 K
smss.exe                       544 Services                   0        640 K
csrss.exe                      768 Services                   0      4,348 K
wininit.exe                    852 Services                   0      4,912 K
services.exe                   932 Services                   0      8,768 K
lsass.exe                      324 Services                   0     18,160 K
svchost.exe                   1044 Services                   0      2,308 K
svchost.exe                   1068 Services                   0     27,364 K
    .
    .
    .
svchost.exe                  12184 Services                   0      8,544 K
cmd.exe                      16008 Console                    3      3,996 K
conhost.exe                  21712 Console                    3     18,448 K
tasklist.exe                 15488 Console                    3     10,096 K
```

The current process is the one running the **tasklist.exe** application. The process ID (PID) of this process is **15488**.