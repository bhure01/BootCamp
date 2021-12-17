#!/bin/bash -x
read -p "Enter the year:" year
# short code 
if [[ $(($year%4)) -eq 0 && $(($year%400/100)) -eq 0 ]]
then
	echo leap year
elif [[ $($year%100) -eq 0 ]]
then 
	echo Not a leap year
else
	echo Not a leap year
fi

