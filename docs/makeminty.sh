#!/bin/sh

### check free space on /usr/local prior to install
### all packages require at least 5GB of space

### install packages
pkg_add unzip-6.0p13 \
slim slim-themes \
mate-desktop mate-session-manager mate-control-center \
mate-menus mate-panel mate-notification-daemon \
mate-system-monitor mate-terminal mate-calc gucharmap \
mate-extras mate-media mate-utils mate-themes mate-icon-theme \
paper-icon-theme-1.5.0p1 paper-gtk-theme-2.1.0p1 dconf-editor \
nano wget git htop xmlstarlet alpine \
chromium \
libreoffice evolution evolution-ews gimp dia bluefish grisbi \
transmission transmission-gtk filezilla \
vlc handbrake audacity \
keepassx openvpn-2.4.9

### enable setting / daemons
rcctl disable xenodm
rcctl enable messagebus
rcctl enable avahi_daemon
rcctl enable slim

### set xinitrc to enable mate session
echo "exec mate-session" > /etc/skel/.xinitrc

### customize slim login window
cp /etc/slim.conf /etc/slim.conf.preMakeMinty.bak
sed -i.bak 's/^\(current_theme \).*/\1     wave/' /etc/slim.conf
sed -i.bak 's/^\(welcome_msg \).*/\1     Login/' /etc/slim.conf
mv /usr/local/share/slim/themes/wave/background.jpg /usr/local/share/slim/themes/wave/background.jpg.bak 
cp /usr/local/share/slim/themes/previous/background.png /usr/local/share/slim/themes/wave/background.png

# default background at login = Sun purple
gsettings set org.mate.background picture-filename ''
gsettings set org.mate.background color-shading-type 'solid'
gsettings set org.mate.background primary-color 'rgb(80,80,117)'

### DCONF settings
echo "user-db:user" > /etc/dconf/profile/user
echo "system-db:local" >> /etc/dconf/profile/user
mkdir /etc/dconf/db/local.d
# write /etc/dconf/db/local.d/mintbsd_local_dconf_settings
echo "[org/mate/marco/general]
compositing-manager=false
num-workspaces=2
theme='Paper'
titlebar-font='Sans Bold 11'
[org/mate/desktop/background]
picture-filename=''
color-shading-type='solid'
primary-color='rgb(80,80,117)'
[org/mate/desktop/interface]
gtk-theme='Paper'
icon-theme='Paper'
monospace-font-name='Monospace 11'
document-font-name='Sans 11'
font-name='Sans 11'
[org/mate/caja/desktop]
font='Sans 11'
" > /etc/dconf/db/local.d/mintbsd_local_dconf_settings
dconf compile /etc/dconf/db/local /etc/dconf/db/local.d
dconf update 

### Make window borders wide enough to click-on in order to resize
sed -i.bak1 "s/<distance name=\"left_width\" value=\"1\" \/>/<distance name=\"left_width\" value=\"5\" \/>/g" /usr/local/share/themes/Paper/metacity-1/metacity-theme.xml
sed -i.bak2 "s/<distance name=\"right_width\" value=\"1\" \/>/<distance name=\"right_width\" value=\"5\" \/>/g" /usr/local/share/themes/Paper/metacity-1/metacity-theme.xml
sed -i.bak3 "s/<distance name=\"bottom_height\" value=\"1\" \/>/<distance name=\"bottom_height\" value=\"5\" \/>/g" /usr/local/share/themes/Paper/metacity-1/metacity-theme.xml

### end of script OUTPUT
echo "\n### makeminty has completed ###"
echo "# Copy /etc/skel/.xinitrc to home directory of each user to enable graphical login"
 
