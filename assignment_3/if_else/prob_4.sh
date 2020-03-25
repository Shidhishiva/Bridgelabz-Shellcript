#!/bin/bash

#Write a program that takes a year as input and outputs the Year is a Leap Year or not
#a Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless
#divisible by 400.

r=$((RANDOM % 2))
if [ $r -eq 1 ]
then
echo "Heads"
else
echo "Tails"
fi


