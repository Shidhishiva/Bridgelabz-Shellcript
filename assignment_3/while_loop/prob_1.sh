#!/bin/bash

#power of 2

product=1
i=1
echo "input n"
read n
while [ $n -gt 0 -a $product -ne 256 ]
do
product=$(($product*2))
echo "2^$i    $product"
((n--))
((i++))
done

