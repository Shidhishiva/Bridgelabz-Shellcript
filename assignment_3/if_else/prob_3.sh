#!/bin/bash

#Write a program that takes a year as input and outputs the Year is a Leap Year or not
#a Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless
#divisible by 400.

echo "Enter the year"
read y
if [ `expr $y % 4` -eq 0 -a `expr $y % 100` -ne 0 -o `expr $y % 400` -eq 0 ]
then
echo "Year is leap year"
else
echo "Not a leap year"
fi
