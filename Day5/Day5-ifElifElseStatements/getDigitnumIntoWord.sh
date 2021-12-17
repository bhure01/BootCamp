#!/bin/bash -x

read -p "Enter the number between 1-9:" number

if [ $number -eq 1 ]
then
	echo "The number is One"
elif [ $number - eq 2 ]
then
	echo "The number is Two"
elif [ $number - eq 3 ]
then
	echo "The number is Three"
elif [ $number -eq 4 ]
then
	echo "The number is Four"
elif [ $number -eq 5 ]
then
	echo "The number is Five"
elif [ $number -eq 6 ]
then
	echo "The number is Six"
elif [ $number -eq 7 ]
then
	echo "The number is Seven"
elif [ $number -eq 8 ]
then
	echo "The number is Eight"
elif [ $number -eq 9 ]
then
	echo "The number is Nine"
else
	echo "Invalid Number"
fi
