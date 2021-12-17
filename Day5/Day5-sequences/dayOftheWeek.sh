#!/bin/bash -x
echo Enter day;
read day
echo Enter month;
read month
echo Enter year;
read year
year0=$(($year-(14-$month)/12))
month0=$(($month+12*((14-$month)/12)-2))
x=$(($year0+$year0/4-$year0/100+$year0/400))
day0=$(( ($day + $x + 31 * $month0 /12 ) %7 ))
echo $day0

if [ $day0 -eq 0 ]
then 
	echo Sunday
elif [ $day0 -eq 1 ]
then
	echo Monday
elif [ $day0 -eq 2 ]
then
	echo Tuesday
elif [ $day0 -eq 3 ]
then
	echo Wednesday
elif [ $day0 -eq 4 ]
then
	echo Thursday
elif [ $day0 -eq 5 ]
then
	echo Friday
elif [ $day0 -eq 6 ]
then
	echo Saturday
fi
 
