#!/bin/bash

#range from 0-100 find reapeated twice like 22,33


counter=0
i=11
while [ $i -lt 100 ]
do
double[ ((counter++)) ]=$i
i=$(($i + 11))
done
echo ${double[@]}



