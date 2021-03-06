#!/bin/bash

read -p "What is this : " this
echo "This is $this"

# echo $0
# echo $1
# echo $2
echo "${@}" # Access all the arguments [More on this later]

for i in "$@"
do
  echo "$i"
done

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

# 1. Return values

# If notes.md file doesn't exist, create one and 
# add the text "created by bash"
if find notes.md
then
  echo "notes.md file already exists"
else
  echo "created by bash" | cat >> notes.md
fi

# 2. Arithmetic Evaluations
read -p "Enter your age: " age

if (( "$age" > 18 ))
then
  echo "Adult!"
elif (( "$age" > 12 ))
then
  echo "Teen!"
else
  echo "Kid"
fi


# print numbers 1 to 10

# c like for loop
for (( i = 1; i <= 10; ++i ))
do
  echo "$i"
done

# for in
for i in {1..10}
do
  echo "$i"
done

# while
i=1
while [[ "$i" -le 10 ]]
do
  echo "$i"
  ((i++))
done

# until
i=1
until [[ "$i" -eq 11 ]]
do
  echo "unitl $i"
  ((i++))
done

# iterating over arrays
arr=(a b c d)

# For in
for i in "${arr[@]}"
do
  echo "$i"
done

# c like for
for (( i = 0; i < "${#arr[@]}"; i++))
do
  echo "${arr[$i]}"
done

# while
i=0
while [[ "$i" -le "${#arr[@]}" ]]
do
  echo "${arr[$i]}"
  (( i++ ))
done

