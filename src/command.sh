#!/usr/bin/env bash

set -o errtrace
set -o nounset
set -o pipefail
# set -x # uncomment to debug

timeout=5

clip () {
  # Use clipboard and clear after timeout.
  echo "Same text s" | xclip -selection clipboard # xsel -i -b
  printf "\n"
  # shift
  while [ $timeout -gt 0 ] ; do
    printf "\r\033[K Clearing in %.d" $((timeout--))
    sleep 1
  done

  # clear after timeout
  # printf "" | ${copy}
}

clip
