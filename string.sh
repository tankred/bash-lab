#!/bin/bash

# String Manipulation and Expanding Variables
 
var="hello world dddd"
echo ${#var}	        # Find the length of the string
echo ${var%d}	        # Remove from shortest rear (end) pattern
echo ${var%%d}	        # Remove from longest rear (end) pattern
echo ${var:0:5}         # ${var:num1:num2}	Substring
echo ${var#he}	        # ${var#pattern}	Remove from shortest front pattern
echo ${var##he}		# ${var##pattern}	Remove from longest front pattern
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


