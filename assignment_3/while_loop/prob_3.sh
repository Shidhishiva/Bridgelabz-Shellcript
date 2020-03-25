#!/bin/bash
#flip coin

w=0
while [ $w -le 11 ]
do
r=$((RANDOM%2))
if [ $r -eq 1 ]
then
echo "Heads"
((w++))
else
echo "Tails"
fi
done
