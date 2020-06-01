# MintBSD Cheatsheet
This document is a collection of tips and useful commands you may need when administering your OpenBSD workstation.

# Post makeminty steps
In case you missed the instruction output at the end of the ./makeminty.sh command/process, here they are again:

Copy /etc/skel/.xinitrc to home directory of each user to enable graphical login

# WiFi
## Hardware

OpenBSD supports only limited number of network interface cards.  Purchasing a supported USB Wi-Fi adapter is a great alternative to ensure hassle free network connectivity.

The Edimax N150 Wi-Fi Nano USB Adapter (PN: EW-7811UN) is a common choice. It can be purchsed from Amazon for about $20 (USD).  And with an ultra slim profile it's an ideal choice for laptops.

## Firmware
```# fw_update
```

## Firmware manual install
http://firmware.openbsd.org/firmware/6.7/



## Control Commands
```# sh /etc/netstart
```
# Battery
Show battery status.
```# apm
```
# Display
## Brightness
```# wsconsctl display.brightness=20%
```
# System Adminsistration
## OS updates
```# syspatch
```
## Software package updates
```# pkg_add -u
```
## Local Privilages
WARNING! These commands will weaken your system security. 
Members of the operator group have enhanced privilages such as the ability to write to raw data devices.
```# usermod -S operator
# usermod -S staff
```
## User access to system resources - login.conf

## Access USB data storage devices
(ref: https://www.cyberciti.biz/faq/openbsd-mounting-usb-flash-drive-harddisk/)

Insert USB media
Type the following command to list device names

```# sysctl hw.disknames
```
Use dmesg command to get more info
```# dmesg
```

Use the disklabel command to get more info about sd2
```# disklabel sd2
```
Note the letter assign to each partition, e.g. "i"

Create a mount point directory
```# mkdir /mnt/usb
```
Mount the partition
```# mount /dev/sd2i /mnt/usb
```

Unmount when done
```# unmount /mnt/usb
```

## Antivirus

## Security Report

## Other Tools

## sudo / doas
OpenBSD uses doas instead of sudo.
To enable the doas command you need to
```# cp /etc/examples/doas.conf /etc
```

### dmesg
View system (console) messages such as start-up details and hardware detection notices.
```# dmesg
```





