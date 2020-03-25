#!/bin/bash -x 

#snake and ladder
noOfrollsone=0
noOfrollstwo=0
positionone=0
positiontwo=0
p=1 
while [ $positionone -ne 100 -a $positiontwo -ne 100 ]
do
roll=$((RANDOM % 6 + 1))
Case=$((RANDOM % 3 + 1))
case $Case in 
1) if [ $p -eq 1 ]
   then
   p=2
   ((noOfrollsone++))
   else
   p=1
   ((noOfrollstwo++))
   fi
   ;;
2) if [ $p -eq 1 ]
   then
   ((positionone+=$roll))
   if [ $positionone -gt 100 ]
   then
   ((positionone-=$roll))
   fi
   p=1
   ((noOfrollsone++)) 
   else
   ((positiontwo+=$roll))
   if [ $positiontwo -gt 100 ]
   then
   ((positiontwo-=$roll))
   fi
   p=2
   ((noOfrollstwo++))
   fi
   ;;
3) if [ $p -eq 1 ]
   then
   ((positionone-=$roll))
   if [ $positionone -lt 0 ]
   then
   positionone=0
   fi
   p=2 
   ((noOfrollsone++))
   else
   ((positiontwo-=$roll))
   if [ $positiontwo -lt 0 ]
   then
   positiontwo=0
   fi 
   p=1
   ((noOfrollstwo++))
   fi
   ;;
esac
echo "current position of player1 is $positionone"
echo "current position of player2 is $positiontwo"
done 
if [ $positionone -eq 100 ]
then
echo "no of dice rolls required by player1  to reach 100th position $noOfrollsone"
else
echo "no of dice rolls required by player2  to reach 100th position $noOfrollstwo"
fi

