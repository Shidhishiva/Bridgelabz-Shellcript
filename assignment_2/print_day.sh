#!/bin/bash

#printing day of for particular date provided by the user 


#printing day of for particular date provided by the user 


echo "input the month  as 1 for january 2 for february and so on"
read m
echo "input date"
read d
echo "input year"
read y
 
Yo=`echo "scale=0; $y-(14-$m)/12" | bc`

x=`echo "scale=0; $Yo +$Yo/4 -$Yo/100 + $Yo/400" | bc`

mo=`echo "scale=0; $m+12*((14−$m)/12)−2" | bc`

do=`echo "scale=0; ($d+$x+31*$mo/12)%7" | bc`

echo "The day for above date is : "

case $do in
 0) echo "Sunday"
;;
 1) echo "Monday"
;;
 2) echo "Tuesday"
;;
 3) echo "Wednesday"
;;
 4) echo "Thursday"
;;
 5) echo "Friday"
;;
 6) echo "Saturday"
;;
esac

sequences - Copy.sh




