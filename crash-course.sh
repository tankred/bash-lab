#!/bin/bash

read -p "What is this : " this
echo "This is $this"

echo $0
echo $1
echo $2
echo "${@}" # Access all the arguments [More on this later]
