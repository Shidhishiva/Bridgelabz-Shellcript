
#1ft=12inch in then 42 in ? ft


convfti=12                             #conversion factor of 1 feet to inch
feet=42
inch=`expr $feet \* $convfti`
echo "42 feet is $inch in"
