#!/bin/bash

#dictionary


declare -A dict
dict=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0)
while [ 1 -eq 1 ]
do
r=$((RANDOM %  6 + 1))
dict[$r]=`expr ${dict[$r]} + 1`
if [ ${dict[$r]} -eq 10 ]
then
break
fi
done
echo ${dict[@]}
echo "$r has the largest occurence"
j=10
for i in ${!dict[@]}
do
if [ $j -gt ${dict[$i]} ]
then
j=${dict[$i]}
r=$i
fi
done
echo "$r has the least occurence"
