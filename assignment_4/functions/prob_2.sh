#!/bin/bash

#check two numbers are palindrome
palindrome () {
check="$1"
check1=""
temp=$1
while [ $temp -gt 0 ]
do
r=$(($temp % 10))
check1+="$r"
temp=$(($temp/10))
done
if [ $check = $check1 ]
then
ret="is a palindrome"
else
ret="is not a palindrome"
fi
}
ret="is not a palindrome"
echo "enter two numbers to check for palindrome"
read n1 n2
palindrome $n1
echo "$n1 $ret"
palindrome $n2
echo "$n2 $ret"


#prime number then show its palindrome is also prime

prime () {
for (( i=2; i<$1; i++ ))
do
if [ `expr $1 % $i` -eq 0 ]
then
echo="enter the prime number"
exit
fi
done
echo "no passed in function is prime"
}
palindrome () {
temp=$1
while [ $temp -gt 0 ]
do
r=$(($temp % 10))
p=$( echo ${p}${r} )
temp=$(($temp/10))
done
return $p
}

echo "enter the number"
read n
prime $n
palindrome $n
ret=$?
prime $ret



