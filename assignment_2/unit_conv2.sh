
#Rectangular Plot of 60feet * 40feet in meters


conv1=`awk 'BEGIN { print 3.28084*60 }'`     #3.28084 is the conversion factor of 1 metre to feet
conv2=`awk 'BEGIN { print 3.28084*40 }'`
echo "rectangular plot of 60 feet X 40 feet in meters is $conv1 X $conv2"
 area=`echo $conv1 \* $conv2 |bc`
echo "Area : $area "


#Area of 25 such plots in Acres


acres=`echo $area*4046.86*25 |bc`             #4046.86 is the conversion factor of 1 acres to Square meters
echo "The Square meters is $acres Acres"


