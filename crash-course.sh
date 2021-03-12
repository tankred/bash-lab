#!/bin/bash

 read -p "What is this : " this
 echo "This is $this"

echo $0
echo $1
echo $2
echo "${@}" # Access all the arguments [More on this later]


echo "/////////////////////////:"

file='./crash-course.sh'
str=''
str1='OK'
str2='NOL'
int1=5
int2=8

if [[ -n "$1" ]]
then
  echo "Your first argument was $1"
else
  echo "No Arguments passed"
fi

if [[ -e "$file" ]]; then echo 'OK'; fi # True if file exists
if [[ -d "$file" ]]; then echo "is a dir"; fi # True if file exists and is a directory
[[ -f "$file" ]] && echo 1 || echo 0  # True if file exists and is a regular file
[[ -z "$str" ]] && echo 1 || echo 0 # True if string is of length zero
[[ -n "$str" ]] && echo 1 || echo 0 # True is string is not of length zero

# Compare Strings
[[ "$str1" == "$str2" ]] && echo 1 || echo 0
[[ "$str1" != "$str2" ]] && echo 1 || echo 0

# Integer Comparisions
[[ "$int1" -eq "$int2" ]] && echo 1 || echo 0 # $int1 == $int2
[[ "$int1" -ne "$int2" ]] && echo 1 || echo 0 # $int1 != $int2
[[ "$int1" -gt "$int2" ]] && echo 1 || echo 0 # $int1 > $int2
[[ "$int1" -lt "$int2" ]] && echo 1 || echo 0 # $int1 < $int2
[[ "$int1" -ge "$int2" ]] && echo 1 || echo 0 # $int1 >= $int2
[[ "$int1" -le "$int2" ]] && echo 1 || echo 0 # $int1 <= $int2

