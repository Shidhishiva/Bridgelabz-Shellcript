#!/bin/bash -x

#flipcoin


noOfheads=0
noOftails=0
i=0
declare -A coinSinglet coinDoublet coinTriplet
while [ $i -lt 10 ]
do
r=$((RANDOM%2))
if [ $r -eq 1 ]
then
coinSinglet[$i]="H"
((noOfheads++))
else
coinSinglet[$i]="T"
((noOftails++))
fi
((i++))
done
HeadpercentageSinglet=$(($noOfheads*10))
noOfheads=0
noOftails=0
i=0
while [ $i -lt 10 ]
do
r=$((RANDOM%2))
r2=$((RANDOM%2))
if [ $r -eq 1 -a  $r2 -eq 1 ]
then
coinDoublet[$i]="HH"
noOfheads=$(($noOfheads+1))
elif [ $r -eq 0 -a  $r2 -eq 0 ]
then
coinDoublet[$i]="TT"
((noOftails++))
elif [ $r -eq 0 -a  $r2 -eq 1 ]
then
coinDoublet[$i]="TH"
else
coinDoublet[$i]="HT"
fi
((i++))
done
HeadpercentageDoublet=$(($noOfheads*10))
noOfheads=0
noOftails=0
i=0
while [ $i -lt 10 ]
do
r=$((RANDOM%2))
r2=$((RANDOM%2))
r3=$((RANDOM%2))
if [ $r -eq 1 -a  $r2 -eq 1 -a $r3 -eq 1 ]
then
coinTriplet[$i]="HHH"
noOfheads=$(($noOfheads+1))
elif [ $r -eq 0 -a  $r2 -eq 0 -a $r3 -eq 0 ]
then
coinTriplet[$i]="TTT"
((noOftails++))
elif [ $r -eq 0 -a  $r2 -eq 0 -a $r3 -eq 1 ]
then
coinTriplet[$i]="TTH"
elif [ $r -eq 0 -a  $r2 -eq 1 -a $r3 -eq 1 ]
then
coinTriplet[$i]="THH"
elif [ $r -eq 1 -a  $r2 -eq 1 -a $r3 -eq 0 ]
then
coinTriplet[$i]="HHT"
elif [ $r -eq 1 -a  $r2 -eq 0 -a $r3 -eq 0 ]
then
coinTriplet[$i]="HTT"
elif [ $r -eq 1 -a  $r2 -eq 0 -a $r3 -eq 1 ]
then
coinTriplet[$i]="HTH"
else
coinTriplet[$i]="THT"
fi
((i++))
done
HeadpercentageTriplet=$(($noOfheads*10))
n=${#coinSinglet[@]}
for (( i=1; i< $n; i++ ))                              #loop for sorting the array
do
temp=${coinSinglet[$i]}
j=$(($i-1))
while [ "$j" -ge 0 -a "${coinSinglet[$j]}" \> "$temp" ]
do
coinSinglet["$(($j+1))"]=${coinSinglet[$j]}
((j--))
done
coinSinglet["$(($j+1))"]=$temp
done
n=${#coinDoublet[@]}
for (( i=1; i< $n; i++ ))                              #loop for sorting the array
do
temp=${coinDoublet[$i]}
j=$(($i-1))
while [ "$j" -ge 0 -a "${coinDoublet[$j]}" \> "$temp" ]
do
coinDoublet["$(($j+1))"]=${coinDoublet[$j]}
((j--))
done
coinDoublet["$(($j+1))"]=$temp
done
echo ${coinTriplet[@]}
n=${#coinTriplet[@]}
for (( i=1; i< $n; i++ ))                              #loop for sorting the array
do
temp=${coinTriplet[$i]}
j=$(($i-1))
while [ "$j" -ge 0 -a "${coinTriplet[$j]}" \> "$temp" ]
do
coinTriplet["$(($j+1))"]=${coinTriplet[$j]}
((j--))
done
coinTriplet["$(($j+1))"]=$temp
done
if [ $HeadpercentageSinglet -gt $HeadpercentageDoublet -a  $HeadpercentageSinglet -gt $HeadpercentageTriplet ]
then
echo "singlet combination wins"
elif [ $HeadpercentageDoublet -gt $HeadpercentageSinglet -a $HeadpercentageDoublet -gt $HeadpercentageTriplet ]
then
echo " doublet combination win"
else
echo " triplet combination win"
fi

