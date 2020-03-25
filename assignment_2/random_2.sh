#!/bin/bash

# read five 2 digit random values, then find sum and average



count=0
sum=0

while [ $count -lt 5 ]
do
sum=`expr $sum + $((RANDOM % 10 +10))`        #adding random numbers
count=`expr $count + 1`                       #incrementing counter
done
echo "the sum of numbers is $sum"
echo "the average of numbers is $(($sum / $count))"









