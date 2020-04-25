#!/bin/sh

# sysupgrade -s # get OpenBSD6.7 via current

### check free space on /usr/local prior to install
# e.g. 80GB HDD, post OS install 218K used, 10.7G avail

### install packages
pkg_add unzip-6.0p13 \
slim slim-themes \
mate-desktop mate-session-manager mate-control-center \
mate-menus mate-panel mate-notification-daemon \
mate-system-monitor mate-terminal mate-calc \
mate-extras mate-media mate-utils mate-themes mate-icon-theme dconf-editor\
nano wget git openvpn-2.4.7p1 htop \
chromium \
libreoffice thunderbird gimp dia \
transmission transmission-gtk filezilla \
vlc handbrake \
keepassx clamav 

### enable setting / daemons
rcctl disable xenodm
rcctl enable messagebus
rcctl enable avahi_daemon
rcctl enable slim

### set xinitrc to enable mate session
echo "exec mate-session" >> /etc/skel/.xinitrc

### customize slim login window
cp /etc/slim.conf /etc/slim.conf.preMakeMinty.bak
sed -i.bak 's/^\(current_theme \).*/\1     previous/' /etc/slim.conf
sed -i.bak 's/^\(welcome_msg \).*/\1     Login/' /etc/slim.conf

# default background at login = Sun purple
gsettings set org.mate.background picture-filename ''
gsettings set org.mate.background color-shading-type 'solid'
gsettings set org.mate.background primary-color 'rgb(80,80,117)'

# DCONF settings
echo "user-db:user" > /etc/dconf/profile/user
echo "system-db:local" >> /etc/dconf/profile/user
mkdir /etc/dconf/db/local.d
# PUT mintbsd_local_dconf_settings into this folder
dconf compile /etc/dconf/db/local /etc/dconf/db/local.d
dconf update 

echo "\n### makeMinty is DONE!"
echo "### Copy /etc/skel/.xinitrc to home directory of each user to enable graphical login"
 
