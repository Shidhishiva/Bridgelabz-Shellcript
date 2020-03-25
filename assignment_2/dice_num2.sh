#!/bin/bash

#add two random dice number and print the value.

num1=`echo $((RANDOM % 6 + 1 ))`
num2=`echo $((RANDOM % 6 + 1 ))`
echo -e " First number is : $num1 \n Second number is : $num2 "
echo " Sum of two random dice number : $((num1 + num2)) "
