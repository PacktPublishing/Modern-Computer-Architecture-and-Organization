__Modern Computer Architecture and Organization__, by Jim Ledin. Published by Packt Publishing
# Chapter 12, Exercise 3

Create two separate copies of your Ubuntu guest machine in your host system’s VirtualBox environment. Configure both Ubuntu guests to connect to the VirtualBox *internal* network. Set up the two machines with compatible Internet Protocol addresses. Verify each of the machines can receive a response from the other using the *ping* command. By completing this exercise, you will have configured a virtual network within your virtualized environment.

# Answer
1. In your host system VirtualBox, open the **Settings** dialog for the Ubuntu VM you set up in [Exercise 1](Ex__1_vbox_ubuntu.md) and select the *Network* settings. Set the **Attached to:** network type to *Internal*, then click **OK**.

1. Right-click on the Ubuntu VM in the VirtualBox manager and select **Clone...** from the context menu. Click **Next** in the *Clone Virtual Machine* menu. Leave **Full clone** selected and click **Clone**. Wait for the cloning process to complete.

1. Open a command prompt on your host system and navigate to the installation directory for VirtualBox. On Windows, this command takes you to the default installation location:
```
cd "\Program Files\Oracle\VirtualBox"
```

4. Start a DHCP server for the *intnet* VirtualBox network with this command:
```
VBoxManage dhcpserver add --netname intnet --ip 192.168.10.1 --netmask 255.255.255.0 --lowerip 192.168.10.100 --upperip 192.168.10.199 --enable
```

5. Start both of the VMs. Based on the DHCP server settings recommended in the previous step, the VMs should be assigned the IP addresses 192.168.10.100 and 192.168.10.101.

1. Login to one of the running VMs. Click the downward facing triangle in the upper right corner of the screen. Select **Wired Connected** from the dialog, then click **Wired Settings**.

1. Click the gear icon in the **Wired** section of the **Settings** dialog. The machine's IP address will be displayed. It should be one of the two IP addresses listed in *step 5*.

1. Open a terminal window in the VM (press *Ctrl+Alt+T*)

1. Ping the other machine. For example, if this machine's IP address is 192.168.10.100, enter the following command:
```
ping 192.168.10.101
```

You should see a response similar to the following. Press *Ctrl+C* to stop the updates:
```
osboxes@osboxes:~$ ping 192.168.10.101
PING 192.168.10.101 (192.168.10.101) 56(84) bytes of data.
64 bytes from 192.168.10.101: icmp_seq=1 ttl=64 time=0.372 ms
64 bytes from 192.168.10.101: icmp_seq=2 ttl=64 time=0.268 ms
64 bytes from 192.168.10.101: icmp_seq=3 ttl=64 time=0.437 ms
64 bytes from 192.168.10.101: icmp_seq=4 ttl=64 time=0.299 ms
^C
--- 192.168.10.101 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3054ms
rtt min/avg/max/mdev = 0.268/0.344/0.437/0.065 ms
osboxes@osboxes:~$ 
```

10. Login to the second Ubuntu VM and repeat *steps 6-9* to display its IP address and ping the first Ubuntu VM.
