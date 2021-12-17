#!/bin/bash -x
read -p "Enter the number between 1-7:" number
if [ $number -eq 1 ]
then
	echo "You have entered Monday"
elif [ $number -eq 2 ]
then
	echo "You have entered Tuesday"
elif [ $number -eq 3 ]
then
	echo "You have entered Wednesday"
elif [ $number -eq 4 ]
then
	echo "You have entered Thursday"
elif [ $number -eq 5 ]
then
	echo "You have entered Friday"
elif [ $number -eq 6 ]
then
	echo "You have entered Saturday"
elif [ $number -eq 7 ]
then
	echo "You have entered Sunday"
else
	echo "You have entered Invalid Number and please enter the numbers between 1 to 7"
fi
