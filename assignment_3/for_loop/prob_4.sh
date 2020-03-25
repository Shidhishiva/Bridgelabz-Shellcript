
#!/bin/bash
#find prime factors

echo "input the number to find factors"
read n
temp=$n
n1=2
echo "the prime factors"
for (( i=2; i*i<=n; i++ ))
do
if [ `expr $temp % $n1` -ne 0 ]
then
((n1++))
continue
fi
if [ `expr $temp % $n1` -eq 0 ]
then
echo $n1
temp=$(($temp / $n1))
fi 
done
echo $temp


