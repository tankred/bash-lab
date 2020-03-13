#!/bin/bash

# String Manipulation and Expanding Variables
# For your ready references here are all your handy bash parameter substitution operators. Try them all; enhance your scripting skills like a pro:
# 
var=" hello world "

echo ${#var}	# Find the length of the string
# ${var%pattern}	Remove from shortest rear (end) pattern
# ${var%%pattern}	Remove from longest rear (end) pattern
# ${var:num1:num2}	Substring
# ${var#pattern}	Remove from shortest front pattern
# ${var##pattern}	Remove from longest front pattern
# ${var/pattern/string}	Find and replace (only replace first occurrence)
# ${var//pattern/string}	Find and replace all occurrences
# ${!prefix*}	Expands to the names of variables whose names begin with prefix.
# ${var,}
# ${var,pattern}	Convert first character to lowercase.
# ${var,,}
# ${var,,pattern}	Convert all characters to lowercase.
# ${var^}
# ${var^pattern}	Convert first character to uppercase.
# ${var^^}
# ${var^^pattern}	Convert all character to uppercase..
# ${parameter:-defaultValue} #	Get default shell variables value
# ${parameter:=defaultValue} #	Set default shell variables value
# ${parameter:?"Error Message"} #	Display an error message if parameter is not set
# References:
# Linux shell scripting wiki
# UNIX / Linux bash build script examples
# oo-style string library for bash 4
# Bash man page
# ADVERTISEMENTS
# Posted by: Vivek Gite
# The author is the creator of nixCraft and a seasoned sysadmin, DevOps engineer, and a trainer for the Linux operating system/Unix shell scripting. Get the latest tutorials on SysAdmin, Linux/Unix and open source topics via RSS/XML feed or weekly email newsletter.
# 
# Your support makes a big difference:
# I have a small favor to ask. More people are reading the nixCraft. Many of you block advertising which is your right, and advertising revenues are not sufficient to cover my operating costs. So you can see why I need to ask for your help. The nixCraft takes a lot of my time and hard work to produce. If everyone who reads nixCraft, who likes it, helps fund it, my future would be more secure. You can donate as little as $1 to support nixCraft:
# 
# Start the discussion at www.nixcraft.com
# Historical Comment Archive
# Next post:Download Fedora 14 CD / DVD ISO
# ADVERTISEMENTS
# Cool Linux penguin shirt
# 
# 
# 
# ADVERTISEMENTS
# nixCraft ©2000-2020 nixCraft. All rights reserved.
# PRIVACYTERM OF SERVICECONTACT/EMAILDONATIONSSEARCH
# 
# src https://www.cyberciti.biz/tips/bash-shell-parameter-substitution-2.html
