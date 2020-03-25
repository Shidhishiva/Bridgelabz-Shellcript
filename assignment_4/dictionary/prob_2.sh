#!/bin/bash

#dictionary2 problem


declare -A dict
dict=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 [7]=0 [8]=0 [9]=0 [10]=0 [11]=0 [12]=0)
i=0
while [ $i -ne 50 ]
do
r=$((RANDOM %  12 + 1))
dict[$r]=`expr ${dict[$r]} + 1`
((i++))
done
echo ${dict[@]}





