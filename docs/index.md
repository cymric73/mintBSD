## About mintBSD
MintBSD is a configuration script for OpenBSD 6.7 (beta) that will convert a fresh OS install (with X11) into a graphical desktop workstation.  The goal of the project is to create a stable, usable and familiar desktop experience.  We achieve this using OpenBSD ports software and minimal configuration as required.  MintBSD is not a distro or theme.  
## Usage instructions
1. Install OpenBSD 6.7 (beta) with X11
2. Post installation, run the following commands as root:
```
pkg_add wget
wget https://raw.githubusercontent.com/cymric73/mintBSD/master/makeminty-openbsd67.sh
./makeminty-openbsd67.sh
```
## Motivation
OpenBSD is a stellar opeating system.  However, for non-expert users not familiar with configuring their own display and login manager, the task can be a little daungting.  This project attempts to make that process as simple as possible, and in doing so, making OpenBSD more approachable for those seeking to using OpenBSD as a desktop operating system.
