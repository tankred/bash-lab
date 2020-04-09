# /dev/null discards unwanted output

All data written on a /dev/null or /dev/zero special file is discarded by the system. Use /dev/null to send any unwanted output from program/command and syntax is:

command >/dev/null
This syntax redirects the command standard output messages to /dev/null where it is ignored by the shell. OR

command 2>/dev/null
This syntax redirects the command error output messages to /dev/null where it is ignored by the shell. OR

command &>/dev/null
This syntax redirects both standard output and error output messages to /dev/null where it is ignored by the shell.

SAMPLES: 


./usage.sh  # gives error
./usage.sh file # gives output 
./usage.sh file 2>/dev/null
./usage.sh file >/dev/null
./usage.sh file &>/dev/null
./usage.sh &>/dev/null
