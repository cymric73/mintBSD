# MintBSD Cheatsheet
This document is a collection of tips and useful commands you may need when administering your OpenBSD workstation.

## Post makeminty steps
In case you missed the instructions output at the end of the makeminty.sh install, here they are again:

Copy /etc/skel/.xinitrc to home directory of each user to enable graphical login.
```
# cp /etc/skel/.xinitrc /home/jsmith
```

## WiFi Hardware

OpenBSD supports only limited number of network interface cards.  Purchasing a supported USB Wi-Fi adapter is a great alternative to ensure hassle free network connectivity.

The Edimax N150 Wi-Fi Nano USB Adapter (PN: EW-7811UN) is a common choice. It can be purchsed from Amazon for about $20 (USD).  And with an ultra slim profile it's an ideal choice for laptops.

## Firmware manual install
http://firmware.openbsd.org/firmware/6.7/

## Restart Networks
If you are using a laptop and you close the lid, your device might go into sleep/power-savings mode.  Upon resumption often the network remains down.  Use this command to restart your network devices.
```
# sh /etc/netstart
```
## Battery
Show battery status.
```
# apm
```
## Display Brightness
Use this command to adjust the display brightness
```
# wsconsctl display.brightness=20%
```
# System Adminsistration
## OS updates
Apply OS patches.
```
# syspatch
```
## Software package updates
Update all software packages
```
# pkg_add -u
```

## Update Firmware
Update all firmware.
```
# fw_update
```
## Local Privilages
Desktop applications such as Chrome are memory pigs.  To run optimally they need access to large amounts of memory.  Adding yourself to the operator and staff groups grants your user account enhanced privilages (e.g. write to raw devices) and access to additional resources (e.g. extra max memory per process (for Chrome to run smoothly).
WARNING! Granting your daily use account these enhanced privilages lessens your system security. 
```
# usermod -S operator jsmith
# usermod -S staff jsmith
```
## Access USB data storage devices
(ref: https://www.cyberciti.biz/faq/openbsd-mounting-usb-flash-drive-harddisk/)

Insert USB media
Type the following command to list device names

```
# sysctl hw.disknames
```
Use dmesg command to get more info
```
# dmesg
```
Use the disklabel command to get more info about sd2
```
# disklabel sd2
```
Note the letter assign to each partition, e.g. "i"

Create a mount point directory
```
# mkdir /mnt/usb
```
Mount the partition
```
# mount /dev/sd2i /mnt/usb
```

Unmount when done
```
# unmount /mnt/usb
```

## Antivirus

## Security Report

## Other Tools

## sudo / doas
OpenBSD uses doas instead of sudo.  The following steps enable doas and add yourself to the wheel group.
```
# cp /etc/examples/doas.conf /etc
# usermod -S wheel jsmith
```

### dmesg
View system (console) messages such as start-up details and hardware detection notices.
```
# dmesg
```





