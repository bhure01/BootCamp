#!/bin/bash -x

empPresent=1
randomCheck=$((RANDOM%2))

if [ $empPresent -eq $randomCheck ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
