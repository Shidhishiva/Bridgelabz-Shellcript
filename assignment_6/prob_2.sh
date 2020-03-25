#!/bin/bash -x
#flipcoin simulator

noOfheads=0
noOftails=0
while [ $noOfheads -lt 21 -a $noOftails -lt 21 ]
do
r=$((RANDOM%2))
if [ $r -eq 1 ]
then
((noOfheads++))
else
((noOftails++))
fi
done
if [ $noOfheads -gt $noOftails ]
then
echo "heads win by $(($noOfheads-$noOftails))"
elif [ $noOfheads -lt $noOftails ]
then
echo "tails win by $(($noOftails-$noOfheads))"
else
while [ $(($noOfheads-$noOftails)) -ne 2 -a $(($noOfheads-$noOftails)) -ne -2 ]
do
r=$((RANDOM%2))
if [ $r -eq 1 ]
then
((noOfheads++))
else
((noOftails++))
fi
done
fi
echo $noOfheads $noOftails

