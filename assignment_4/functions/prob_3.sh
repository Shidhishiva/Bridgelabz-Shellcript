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

