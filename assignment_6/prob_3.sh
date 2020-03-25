#!/bin/bash -x

#arithmetic computation and sorting

echo " enter the three values "
read a
read b
read c
com1=$((a+b*c))
com2=$((a*b+c))
com3=$((c+a/b))
com4=$((a%b+c))
declare -A computation
computation=([1]=$com1 [2]=$com2 [3]=$com3 [4]=$com4)
counter=0
for i in ${!computation[@]}
do
array[ ((counter++)) ]=${computation[$i]}
done
n=${#array[@]}
for (( i=1; i< $n; i++ ))
do
temp=${array[i]}
j=$(($i-1))
while [ $j -ge 0 -a ${array[j]} -gt $temp ]
do
array[ ($j+1) ]=${array[j]}
((j--))
done
array[($j+1)]=$temp
done
for (( i=$(($n-1)); i>=0; i-- ))
do
echo ${array[i]}
done
echo ${array[*]}

