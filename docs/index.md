MintBSD is a configuration script for [OpenBSD](https://openbsd.org "OpenBSD") 6.8 that will configure an OpenBSD install (with X11) into a [Xfce](https://xfce.org/ "Xfce desktop environment") desktop workstation.  The goal of the project is to create a stable, professional & familiar desktop experience, bundled with commonly used desktop applications.  We achieve this using OpenBSD ports software, the [Nordic-darker Xfce theme](https://www.xfce-look.org/p/1267246/ "Xfce theme Nordic-darker") and minimal configuration as required.

*MintBSD is not a distro or theme.  However, this script will install the [Nordic-darker Xfce theme](https://www.xfce-look.org/p/1267246/ "Xfce theme Nordic-darker") .*  

![mintBSD desktop](https://raw.githubusercontent.com/cymric73/mintBSD/master/docs/img/desktop.png "mintBSD desktop")

## Usage instructions
### Pre-requisites
1. OS install of OpenBSD 6.8 with X11.  This script is meant to be run on a fresh install of OpenBSD as it may clobber some pre-existing configuration settings.
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
Install and configure a sensible & professional OpenBSD desktop using [Simple Login Manager (SLiM)](https://en.wikipedia.org/wiki/SLiM "Simple Login Manager (SLiM)") and the Xfce desktop environment.  Install popular applications from the OpenBSD ports repository: Firefox, LibreOffice, Geary, KeePassXC, GIMP, VLC, Tramsmission, Handbrake and many more.

### Post-requisites
1. `# cp /etc/skel/.xinitrc /home/jsmith` copy template .xinitrc to home directory of each user you want to login graphically.
2. Per user preference, change personal desktop theme to Nordic-darker, via Settings > Appearance > Style tab.

## Screenshots
[Login screen](https://www.mintbsd.com/img/login.png "mintBSD login screen")

[Desktop](https://www.mintbsd.com/img/desktop.png "mintBSD desktop screenshot")

[Desktop with open applications](https://www.mintbsd.com/img/desktop-with-apps.png "mintBSD desktop with apps screenshot")

## New to OpenBSD
See our [OpenBSD cheatsheet](cheatsheet.html) for common commands & settings.

## Motivation
OpenBSD is an powerful operating system but is not often considered for the daily-use desktop. By default comes with a VERY basic desktop when selected during OS installation. Configuring a complete and user-friendly desktop environment can be challenging task for anyone with little experience in this area of Unix-like system administration.  This project simplifies the configuration of the commonly used and familiar Xfce desktop under OpenBSD.  Enjoy!

## Credits
See [https://raw.githubusercontent.com/cymric73/mintBSD/master/CREDITS.txt](https://raw.githubusercontent.com/cymric73/mintBSD/master/CREDITS.txt "Credits")
