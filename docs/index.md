MintBSD is a configuration script for [OpenBSD](https://openbsd.org "OpenBSD") 6.7 (beta) that will configure an OpenBSD install (with X11) into a [MATE](https://mate-desktop.org/ "MATE desktop environment") graphical desktop workstation.  The goal of the project is to create a stable and familiar desktop experience, bundled with commonly used desktop applications.  We achieve this using OpenBSD ports software and minimal configuration as required.

*MintBSD is not a distro or MATE theme.*  

## Usage instructions
### Pre-Req: 
1. OS Install of OpenBSD 6.7 (beta) with X11
2. `df -h /usr/local` you will need at least 5GB free space on the /usr/local partition.  Based on default OpenBSD installer auto-partion rules, you would have needed to have started with an 80 GB HDD allocation.

### Start
Run the following commands as root:
```
# pkg_add wget
# wget https://www.mintbsd.com/makeminty.sh
# chmod u+x ./makeminty.sh
# ./makeminty.sh
```

### Post steps:
1. Copy /etc/skel/.xinitrc to home directory of each user to enable graphical login, e.g. 
`# cp /etc/skel/.xinitrc /home/jsmith`

## Screenshot
[Desktop post login](https://www.mintbsd.com/mintbsd-screenshot.png "mintBSD desktop screenshot")

## Motivation
OpenBSD is a stellar opeating system.  By default it comes with a VERY basic desktop when selected during OS installation. Configuring a more complete and user-friendly desktop environment can be daunting task.  This project simplifies the configuration of the commonly used and familiar MATE desktop under OpenBSD.  Enjoy!
