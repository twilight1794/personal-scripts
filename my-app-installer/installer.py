#!/usr/bin/python
# -*- ENCODING: UTF-8 -*-
# This script it's a powerful and little program that i always use when I install again a copy of Linux system. This install the programs and packages that I use, and remove the packages I don't use. Also update the system, the existing programs, and the repositories source lists. I prepared this list for use in this machine:
# Machine: Acer Aspire One 756 (notebook)
# Processor: Intel Celeron CPU 847 at 1.10 GHz 2x
# RAM: 4 GB
# HDD: 320 GiB
# Video Adapter: Intel 2nd Generation Core Processor Family Integrated Graphics Controller
# This program is written on Python, and runs on GNU/Linux platforms. It's licensed under the MIT License
import sys
import os
from subprocess import call
def sure():
	val = 0
	sure = raw_input ("Are you sure??? [y/n]")
	if sure == "n":
		return 3
	elif sure != "y":
		val = sure()
		return 0
	elif sure == "y":
		return 0
	return val
def inst_one():
	try:
		script = ["sudo","chmod","+rwx--x--x","elementary-os.sh"]
		script1 = ["sudo","chmod","+rwx--x--x","install.sh"]
		script2 = ["./elementary-os.sh"]
		call(script)
		call(script1)
		call(script2)
		return 0
	except OSError:
		return 2
	except KeyboardInterrupt:
		return 3
	except IOError:
		return 4
def inst_two():
	try:
		script = ["sudo","chmod","+rwx--x--x","lubuntu.sh"]
		script1 = ["sudo","chmod","+rwx--x--x","install.sh"]
		script2 = ["./lubuntu.sh"]
		call(script)
		call(script1)
		call(script2)
		return 0
	except OSError:
		return 2
	except KeyboardInterrupt:
		return 3
	except IOError:
		return 4
def inst_three():
	try:
		script = ["sudo","chmod","+rwx--x--x","debian.sh"]
		script1 = ["sudo","chmod","+rwx--x--x","install.sh"]
		script2 = ["./debian.sh"]
		call(script)
		call(script1)
		call(script2)
		return 0
	except OSError:
		return 2
	except KeyboardInterrupt:
		return 3
	except IOError:
		return 4
def inst_four():
	try:
		script = ["sudo","chmod","+rwx--x--x","mint.sh"]
		script1 = ["sudo","chmod","+rwx--x--x","install.sh"]
		script2 = ["./mint.sh"]
		call(script)
		call(script1)
		call(script2)
		return 0
	except OSError:
		return 2
	except KeyboardInterrupt:
		return 3
	except IOError:
		return 4
def main():
	select=0
	print ("My app installer v1.0")
	print ("Licensed under the MIT License")
	print ("What do you do?")
	print ("What profile do you wish to use?")
	print ("1. Elementary OS 0.3.2")
	print ("2. Lubuntu 14.04")
	print ("3. Debian")
	print ("4. Linux Mint 17.3")
	select = input("Choose a option [1-4]: ")
	if select == 1:
		if sure() == 0:
			ret = inst_one()
			return ret
		else:
			return 3
	elif select == 2:
		if sure() == 0:
			ret = inst_two()
			return ret
		else:
			return 3
	elif select == 3:
		if sure() == 0:
			ret = inst_three()
			return ret
		else:
			return 3
	elif select == 4:
		if sure() == 0:
			ret = inst_four()
			return ret
		else:
			return 3
	else:
		return 1
main = main()
exit(main)

# Error Codes
# Err1: Incorrect Select
# Err2: File doesn't exist
# Err3: Cancelled by user
