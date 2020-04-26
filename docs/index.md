MintBSD is a configuration script for [OpenBSD](https://openbsd.org "OpenBSD") 6.7 (beta) that will convert a fresh OS install (with X11) into a graphical desktop workstation.  The goal of the project is to create a stable, usable and familiar desktop experience.  We achieve this using OpenBSD ports software and minimal configuration as required.  MintBSD uses the [MATE desktop environment](https://mate-desktop.org/ "MATE desktop environment").  
*MintBSD is not a distro or MATE theme.*  

## Usage instructions
Step 1) Install OpenBSD 6.7 (beta) with X11

Step 2) Post OS installation, run the following commands as root:
```
# pkg_add wget
# wget https://www.mintbsd.com/makeminty.sh
# chmod u+x ./makeminty.sh
# ./makeminty.sh
```

## Screenshot
[Desktop post login](https://raw.githubusercontent.com/cymric73/mintBSD/master/mintbsd-screenshot.PNG "mintBSD desktop screenshot")

## Motivation
OpenBSD is a stellar opeating system.  By default it comes with a VERY basic desktop when selected during OS installation. Configuring a more complete and user-friendly desktop environment can be daunting task.  This project simplifies the configuration of the commonly used and familiar MATE desktop under OpenBSD.  Enjoy!
