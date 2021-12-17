#!/bin/bash -x
echo "Choose any one number between 1 to 100"

# INITIALIZING CONSTANT VARIABLES
low=1
high=100
medium=0

# TO FIND THE MAGIC NUMBER WHICH IS GUESSED BY THE USER
while [ $low -ne $high ]
do
	medium=$((low+(high-low)/2))
	read -p "Enter 1 if the number is less than $medium or Enter 0 if the number is greater than $medium:" answer
	if [ $medium -eq $low ]
	then
		if [ $answer -eq 1 ]
		then
			echo $medium
			break
		else
			echo $((medium+1))
			break
		fi
	fi

	if [ $answer -eq 1 ]
	then
		high=$medium
	else
		low=$(( $medium+1 ))
	fi
done

# TO PRINT THE MAGIC NUMBER
echo magic number is $medium
