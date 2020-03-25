#!/bin/bash
#Reading 5 RANDOM 3 Digit numbers and output min & max num

count=0
max=100
min=999
while [ $count -lt 5 ]
do
n=$((RANDOM % 10 + 100))
if [ $n -gt $max ]
then
max=$n
fi
if [ $n -lt $min ]
then
min=$n
fi
count=$(($count + 1))
done
echo $max $min
