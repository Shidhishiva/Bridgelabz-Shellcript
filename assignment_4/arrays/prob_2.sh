#!/bin/bash

#sort the array

random=(-11 22 -2 4 1 )                                   #intializing an array with random values
n=${#random[@]}
for (( i=1; i< $n; i++ ))                              #loop for sorting the array
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
for (( j=0; j< $n-1; j++ ))                         #loop for finding the triplet
do
l=$(($j + 1))
r=$(($n - 1))
temp=${random[j]}
while [ $l -lt $r ]
do
if [ `expr $temp + ${random[l]} + ${random[r]}` -eq 0 ]
then
echo "$temp,${random[l]},${random[r]} is a triplet"
((l++))
((r--))
elif [ `expr $temp + ${random[l]} + ${random[r]}` -lt 0 ]  #sorting was done so as to facilate the excution of 
then
((l++))                                                          #if condition and breaking of while loop
else
((r--))
fi
done
done

