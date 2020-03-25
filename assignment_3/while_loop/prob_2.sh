#!bin/bash

#magic number

echo "think number n between 1 to 100"
r="test"
while [ $r != "correct" ]
do
echo $((RANDOM % 101 + 1))
echo "is no is less than n/2 or greater"
read r
done
