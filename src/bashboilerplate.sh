#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t' # The IFS variable - which stands for Internal Field Separator 

usage() {
  cat <<EOF
Usage: ./$(basename "$0") [-h] [-V] 
Bash kitchen sink

Options:

-h, --help      Print this help and exit
-V, --version   Print version
EOF
  exit
}

version() {
  cat <<EOF
v0.1.1
EOF
  exit 0
}

parse_params() {
  while :; do
    case "${1-}" in
    -h | --help) usage ;;
    -V | --version) version ;;
    *) break ;;
    esac
    shift
  done
  return 0
}

parse_params "$@"

echo "-------------------------------"
echo "       bash kitchen "
echo "-------------------------------"
