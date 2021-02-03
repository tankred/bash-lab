#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'
# set -e immediately halts the script when unhandled error appears.
# set -u affects variables. When set, a reference to any variable you haven't previously defined - with the exceptions of $* and $@ - is an error, and causes the program to immediately exit. 
# set -o pipefail
# This setting prevents errors in a pipeline from being masked.
# The IFS variable - which stands for Internal Field Separator - controls what Bash calls word splitting.


if [[ ${1+x} ]]; then 
 
  if [ "$1" == "-h"  ] || [ "$1" == "--help" ]; then
    echo "Usage: ./$(basename "$0")"
    echo "Usage: $(basename "$0") --help"
    echo "Usage: $(basename "$0") --version"
    exit 0
  fi
  
  # --version
  if [ "$1" == "-V"  ] || [ "$1" == "--version" ]; then
    echo "v0.1.0"
    exit 0
  fi

else 

  echo "-------------------------------"
  echo "       bash kitchen "
  echo "-------------------------------"

fi
# EOF
