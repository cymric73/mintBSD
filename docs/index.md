MintBSD is a configuration script for [OpenBSD](https://openbsd.org "OpenBSD") 6.7 that will transform an OpenBSD install (with X11) into a [MATE](https://mate-desktop.org/ "MATE desktop environment") desktop workstation.  The goal of the project is to create a stable, usable and familiar desktop experience, bundled with commonly used desktop applications.  We achieve this using OpenBSD ports software and minimal configuration as required.

*MintBSD is not a distro or MATE theme.*  

## Usage instructions
### Pre-requisites
1. OS Install of OpenBSD 6.7 with X11.
2. `df -h /usr/local` you will need at least 5GB free space on the /usr/local partition.  Based on default OpenBSD installer auto-partion rules, you would need to start with an 80GB or greater HDD allocation.

### Start
Run the following commands as root:
```
# pkg_add wget
# wget https://www.mintbsd.com/makeminty.sh
# chmod u+x ./makeminty.sh
# ./makeminty.sh
```
### Summary of results
Install MATE graphical deskop & popular applications: Chromium, LibreOffice, Evolution, VLC, GIMP, Tramsmission, Handbrake, Wireshare, etc. Configure sensible and professional desktop window theme.

### Post-requisites
1. `# cp /etc/skel/.xinitrc /home/jsmith` copy template .xinitrc to home directory of each user you want to login graphically.

## Screenshots
[Login screen](https://www.mintbsd.com/img/login.png "mintBSD login screen")

[Desktop](https://www.mintbsd.com/img/desktop.png "mintBSD desktop screenshot")

[Desktop with open applications](https://www.mintbsd.com/img/desktop-with-apps.png "mintBSD desktop with apps screenshot")

## New to OpenBSD
See our [cheatsheet](cheatsheet.html) for common OpenBSD tasks & settings.

## Motivation
OpenBSD is an powerful operating system but is not often considered for the daily desktop use-case. By default it comes with a VERY basic desktop when selected during OS installation. Configuring a complete and user-friendly desktop environment can be challenging task for anyone with little experience in this area of Unix-like system configuration.  This project simplifies the configuration of the commonly used and familiar MATE desktop under OpenBSD.  Enjoy!
