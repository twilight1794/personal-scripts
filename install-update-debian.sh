#!/bin/bash
# -*- ENCODING: UTF-8 -*-
# Tihs script install the programs and packages that I use now. Also update the system, the programs, and the repositories source list. I prepared this list for use in:
# OS: Linux Mint 17.3 x86_64 Cinnamon
# DE: Cinnamon 2.8.8
# Linux Kernel: 3.19.0-32-generic
# Processor: Intel Celeron CPU 847 at 1.10 GHz 2x
# RAM: 4 GB
# HDD: 1 TB
# Video Adapter: Intel 2nd Generation Core Processor Family Integrated Graphics Controller
su
# Packages to remove (don't like me :3)
apt-get --purge remove totem
apt-get --purge remove hexchat # If it isn't installed, the option Chat Room of the Welcome Window of Linux Mint won't run.
apt-get --purge remove banshee
apt-get --purge remove eog
apt-get --purge remove tomboy
# In Elementary OS
apt-get --purge remove audience # Video
apt-get --purge remove noise # Music
apt-get --purge remove pantheon-calculator # Calculator
apt-get --purge remove software-center # Software Center
apt-get --purge remove geary # Geary Email Client
apt-get --purge remove maya # Calendar
¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡
# A lihgtweight desktop environment (OpenBox)
apt-get install xorg
apt-get install openbox obconf obmenu oblogout nitrogen lxpanel xcompmgr arandr conky conky-manager clipman gnome-screnshot
apt-get install lxappearance gtk.-engines-* gnome-themes .+-icon-theme # Themes
add-apt-repository ppa:moka/daily
apt-get update
apt-get install moka-icon-theme
wget https://obkey.googlecode.com/files/obkey-1.0.tar.gz
tar -xzvf obkey-1.0.tar.gz
cd obkey-1.0
sudo python setup.py install
cd ~
nano ~/.config/openbox/autostart
nano /etc/conky/conky.conf
cp ~/.gtkrc-2.0 /root/.gtkrc-2.0
apt-get install synaptic
apt-get install gnome-system-monitor
apt-get install grub-customizer
# Multimedia
apt-get install vlc
apt-get install gimp
apt-get install audacity
apt-get install brasero
apt-get install moc moc-ffmpeg-plugin
apt-get install imagemagick
apt-get install inkscape
apt-get install cheese
apt-get install amaya
apt-get install mplayer
# Developement
apt-get install lazarus fp-utils fpc-source fpc
apt-get install python python3
apt-get install git git-daemon-run gitweb git-email git-gui
apt-get install g++
apt-get install build-essential
apt-get install openjdk-7-jdk
apt-get install nasm
apt-get install cmake
apt-get install cfortran
apt-get install gfortran
apt-get install hexedit
# Games
apt-get install bsdgames
apt-get install figlet
apt-get install pacman4console
apt-get install playonlinux winbind
apt-get install dosbox
apt-get install oneko
# Network
apt-get install firefox
apt-get install lynx
apt-get install opera
apt-get install thunderbird
apt-get install filezilla
apt-get install nethogs
apt-get install wicd
# Ofimatic
apt-get install libreoffice
apt-get install pdftk
apt-get install sc
apt-get install le
apt-get install geogebra
apt-get install wordgrinder
apt-get install texlive-full
apt-get install gedit
apt-get install haroopad
apt-get install pandoc
apt-get install html2text
# Essential packages
apt-get install fish
apt-get install openssh-server rssh
apt-get install telnet telnetd
apt-get install wicd
# Social Network
apt-get install skype
apt-get install pidgin
apt-get install twidge
apt-get install finch
apt-get install newsbeuter
# Files
apt-get install thunar
apt-get install mc odt2txt texlive-binaries
apt-get install ranger caca-utils
apt-get install wipe
apt-get install unrar-free
apt-get install gpart gparted
# ownCloud Client
sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_14.04/ /' >> /etc/apt/sources.list.d/owncloud-client.list"
apt-get update
apt-get install owncloud-client
# Utilities
apt-get install alien
apt-get install pal
apt-get install unetbootin
apt-get install virtualbox-qt
apt-get install mysql-workbench
apt-get install pv
# Enbale scan on Linux
apt-get install gscantopdf djvulibre-bin djvulibre-bin-es tesserocr-act
# Set your server to install OwnCloud
apt-get install lamp-server^
mysql_secure_installation
apt-get install apache2 php5 mysql-server mysql-client mysql-admin libapache2-mod-auth-mysql libapache2-mod-php5 php5-gd php5-mysql phpmyadmin php-xml-parser php5-intl smbclient curl libcurl3 php5-curl apache2-utils php5-dev
a2enmod rewrite
a2enmod headers
nano /etc/apache2/apache2.conf # /var/www AllowOverrideNone <- AllowOverrideAll
# Other server (not web)
apt-get install ntp # Temp
apt-get install squid # Proxy
apt-get install ejabberd # XMPP
# Install Spotify Client
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
apt-get update
apt-get install spotify-client
# Enable Facebook on Pidgin
wget https://github.com/jgeboski/purple-facebook/releases/download/92885e0456ed/purple-facebook-92885e0456ed.tar.gz
apt-get install libjson-glib-dev libglib2.0-dev libpurple-dev
tar -xvf purple-facebook-92885e0456ed.tar.gz
cd purple-facebook-92885e0456ed
./configure
make
install
# Install Gambas3
add-apt-repository ppa:nemh/gambas3
apt-get install gambas3
# Drivers for FS
apt-get install btrfs-tools # btrfs
apt-get install e2fsprogs # ext2, ext3
apt-get install e2progs v1.41+ # ext4
apt-get install f2fs-tools # f2fs
apt-get install dosfstools mtools # fat16, fat32
apt-get install hfsutils # HFS
apt-get install hfsprogs # HFS+
apt-get install jfsutils # jfs
apt-get install util-linux # Swap
apt-get install lvm2 # lvm2 pv
apt-get install nilfs-utils #nilfs2
apt-get install ntfsprogs ntfs-3g # NTFS
apt-get install reiser4progs # reiser4
apt-get install reiserfsprogs # reiserfs
apt-get install xfsprogs xfsdump # XFS
apt-get install squashfs-tools # SquashFS
# Useless Use of Terminal
apt-get install sl
gedit /etc/sudoers #defaults ew, reset, <-- insults
#apt-get moo
#aptitude -v moo
#cal 9 1752
#cowsay
#:(){:|:&}
yes
