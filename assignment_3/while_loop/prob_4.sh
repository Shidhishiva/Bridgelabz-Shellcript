#!/bin/bash
#gambler problem



stake=100
bets=0
w=0

while [ $stake -ne 0 -a $stake -ne 200 ]
do
r=$((RANDOM%2))
if [ $r -eq 1 ]
then
((stake++))
((w++))
else
((stake--))
fi
((bets++))
done
echo "no of wins are $w and no of bets are $bets"


