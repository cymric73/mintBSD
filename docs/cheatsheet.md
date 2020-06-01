# MintBSD Cheatsheet
This document is a collection of tips and useful commands that may come in handy when operating your OpenBSD workstation.

## Post MintBSD install steps
In case you missed the instructions output at the end of the makeminty.sh install command, here they are again:

Copy /etc/skel/.xinitrc to home directory of each user to enable graphical login.
```
# cp /etc/skel/.xinitrc /home/jsmith
```

## WiFi Hardware

OpenBSD only support a small number network interface cards.  Chances are the one in your computer isn't compatible.  Don't worry!  You can purchase a low-cost ultra-slim USB Wifi adapter for about $25 (USD).

The Edimax N150 Wi-Fi Nano USB Adapter (PN: EW-7811UN) is a common choice. It can be purchsed from Amazon.  And with an ultra slim design it's an ideal choice for laptops.

See 'Firmware manual install' section below.

## Firmware manual install
Unfortunately the OpenBSD OS install media does not include firmware.  The firmware is added as part of the install process using an available Internet connection. Problem being if you need the firmware run your NIC to get on the Internet.  The Edimax N150 adapter needs the urtwn firware to run.  Here's the process to install via USB.

1. Using another computer with Internet access download this file: [http://firmware.openbsd.org/firmware/6.7/urtwn-firmware-20180103.tgz](http://firmware.openbsd.org/firmware/6.7/urtwn-firmware-20180103.tgz)
2. Copy to a USB drive.
3. Copy from USB drive to OpenBSD workstation. (See _Access to USB data storage devices_ below.)
4. Untar/zip: `# tar zxvf urtwn-firmware-20180103.tgz`
5. `# cd firmware`
6. `# cp ur* /etc/firmware`


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





