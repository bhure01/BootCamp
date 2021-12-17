#!/bin/bash -x
read -p "Enter the numbers 1,10,100,1000:" number
if [ $number -eq 1 ]
then
	echo "Unit"
elif [ $number -eq 2 ]
then
	echo "Ten"
elif [ $number -eq 3 ]
then
	echo "Hundred"
elif [ $number -eq 4 ]
then
	echo "Thousand"
else
	echo "You have entered a Invalid number"
fi

