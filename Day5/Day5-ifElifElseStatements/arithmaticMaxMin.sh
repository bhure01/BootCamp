#!/bin/bash -x
read -p "Enter the first number:" a
read -p "Enter the second number:" b
read -p "Enter the third number:" c

max=0
min=0

operation1=$(( a+b*c ))
operation2=$(( a%b+c ))
operation3=$(( c+a/b ))
operation4=$(( a*b+c ))

# To get maximum 

if [ $operation1 -gt $operation2 ] && [ $operation1 -gt $operation3 ] && [ $operation1 -gt $operation4 ]
then
	echo "Maximum is: $operation1"
elif [ $operation2 -gt $operation3 ] && [ $operaration2 -gt $operation4 ]
then
	echo "Maximum is: $operation2"
elif [ $operation3 -gt $operation4 ]
then
	echo "Maximum is: $operation3"
else 
	echo "Maximum is: $operation4"
fi

# To get minimum

if [ $operation1 -lt $operation2 ] && [ $operation1 -lt $operation3 ] && [ $operation1 -lt $operation4 ]
then
	echo "Minimum is: $operation1"
elif [ $operation2 -lt $operation3 ] && [ $operation2 -lt  $operation4 ]
then
	echo "Minimum is: $operation2"
elif [ $operation3 -lt $operation4 ]
then
	echo "Minimum is: $operation3"
else
	echo "Minimum is: $operation4"
fi

