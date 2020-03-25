#!/bin/bash

#factorial of num

echo "enter the number"
read n
fact=1
for (( i=1; i<=n; i++ ))
do
fact=$(($fact*i))
done
echo "the factorial is $fact"

