__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 5

The example below shows the BCD (boot configuration data) information stored on a Windows 10 system. To display this information on your computer, you must run the bcdedit command from a command prompt with Administrator privilege:

```
C:\>bcdedit

Windows Boot Manager
--------------------
identifier              {bootmgr}
device                  partition=\Device\HarddiskVolume1
path                    \EFI\MICROSOFT\BOOT\BOOTMGFW.EFI
description             Windows Boot Manager
locale                  en-US
inherit                 {globalsettings}
default                 {current}
resumeobject            {92f49995-fef7-11e8-a8e2-e508765ab07c}
displayorder            {current}
toolsdisplayorder       {memdiag}
timeout                 0

Windows Boot Loader
-------------------
identifier              {current}
device                  partition=C:
path                    \WINDOWS\system32\winload.efi
description             Windows 10
locale                  en-US
inherit                 {bootloadersettings}
recoverysequence        {92f49998-fef7-11e8-a8e2-e508765ab07c}
displaymessageoverride  Recovery
recoveryenabled         Yes
isolatedcontext         Yes
allowedinmemorysettings 0x15000075
osdevice                partition=C:
systemroot              \WINDOWS
resumeobject            {92f49995-fef7-11e8-a8e2-e508765ab07c}
nx                      OptIn
bootmenupolicy          Standard
debug                   Yes
```