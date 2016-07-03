#!/bin/bash
# -*- ENCODING: UTF-8 -*-
# This script it's a powerful and little program that i always use when I install again a copy of Linux system. This install the programs and packages that I use, and remove the packages I don't use. Also update the system, the existing programs, and the repositories source lists. I prepared this list for use in this machine:
# Machine: Acer Aspire One 756 (notebook)
# Processor: Intel Celeron CPU 847 at 1.10 GHz 2x
# RAM: 4 GB
# HDD: 320 GiB
# Video Adapter: Intel 2nd Generation Core Processor Family Integrated Graphics Controller

# OS: Linux Mint 17.3 x86_64 Cinnamon
# DE: Cinnamon 2.8.8
# Linux Kernel: 3.19.0-32-generic
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
apt-get --purge remove midori-granite # Midori Web Browser
