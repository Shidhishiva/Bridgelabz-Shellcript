#!/bin/bash

#daily wage employee

echo "Welcome to Employmee wage calculation program"
isPresent=1
randomcheck=$((RANDOM % 2))
if [ $isPresent -eq $randomcheck ]
then
echo "Employee is present"
else
echo "Employee is not present"
fi
Fulltime=8
Wageperhr=20
dailyWage=$(($Fulltime*$Wageperhr))
Parttime=4
isPartTime=1
isFulltime=0
checkemp=$((RANDOM % 2))
case $checkemp in
 $isPartTime) empSalary=$(($Parttime*$Wageperhr))
             ;;
 $isFulltime) empSalary=$(($Fulltime*$Wageperhr))
             ;;
 *) empSalary=0
             ;;
esac
Workingdays=20
TotalSalary=$(($empSalary*$Workingdays))
totalemphr=0
totalworkingdays=0
functiongethour () {
case $1 in
 $isPartTime) emphrs=4
             ;;
 $isFulltime) emphrs=8
             ;;
 *) emphrs=0
             ;;
esac
echo $emphrs
}
while [ $totalemphr -lt 100 -a $totalworkingdays -lt 20 ]
do
((totalWorkingdays++))
emphrs="$( functiongethour $((RANDOM % 2)) )" 
totalemphr=$(($totalemphr + $emphrs))
done
TotalSalary=$(($totalemphr*$Wageperhr))  
empDaliywage[0]=$TotalSalary
empDaliywage[1]=$dailyWage
echo "employee Total wage and daily wage is ${empDailywage[@]}"
declare -A empdailywage
empdailywage=([1]=$TotalSalary [2]=$dailywage [3]=$totalWorkingdays)
echo "employee Total wage daily wage and days is ${empdailywage[@]}"

