#!/bin/bash

#second largest and second smallest element
counter=0
for (( i=0; i<3; i++ ))
do
random[ ((counter++)) ]=$((RANDOM % 900 + 100))
done
for (( i=1; i<3; i++ ))
do
temp=${random[i]}
j=$(($i-1))
while [ $j -ge 0 -a ${random[j]} -gt $temp ]
do
random[ ($j+1) ]=${random[j]}
((j--))
done
random[($j+1)]=$temp
done
echo "the second largest and second smallest element is ${random[1]}"

