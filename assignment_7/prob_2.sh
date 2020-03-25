#!/bin/bash -x

#gambling simulation problem




while [ 1 -eq 1 ]
amountWon=0
amountlost=0
noOfdaysWon=0
noOfdaysLost=0
do
days=0
while [ $days -lt 20 ]
do
stake=100
while [ "$stake" -gt 50 -a "$stake" -lt 150 ] 
do
r=$((RANDOM%2))
if [ $r -eq 1 ]
then
((stake++))
else
((stake--))
fi
done 
if [ "$stake" -gt 100 ]
then
((amountWon+=50))
((noOfdaysWin++))
echo "this is my luckiest day as I won maximum on this day"
else
((amountLost+=50))
((noOfdaysLost++))
echo "this is my unluckiest day as I lost maximum on this day"
fi
((days++))
done
echo "total amount won in 20 days of playing $amountWon"
echo "total amount lost in 20 days of playing $amountLost"
if [ "$noOfdaysWin" -lt "$noOfdaysLost" ]
then
echo "this month no of days won are $noOfdaysWin and no of days lost are $noOfdaysLost and overall lost by $(($noOfdaysLost-$noOfdaysWin)) days"
exit
else
echo "this month no of days won are $noOfdaysWin and no of days lost are $noOfdaysLost and overall won by $(($noOfdaysWin-$noOfdaysLost)) days"
fi
done
