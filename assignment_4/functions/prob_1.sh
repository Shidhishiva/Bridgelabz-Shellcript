


#1.

degtoFh () {
f=$(($1*9/5 + 32))
return $f
}
ftodeg () {
f=$((($1-32)*5/9))
return $f
}
echo -e "enter the your choice \n 1.Degree to Fahrenhiet \n 2.Fahrenhiet to Degree"
read ch
case $ch in
 1) echo "the value to convert"
    read v
    degtoFh $v
    ret=$?
    echo "the converted value is $ret"
    ;;
 2) echo "the value to convert"
    read v
    ftodeg $v
    ret=$?
    echo "the converted value is $ret"
    ;;
 *) echo "wrong input"
    ;;
esac


#2.

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


#3.

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

