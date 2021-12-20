#!/bin/bash -x

empPresent=1
randomCheck=$((RANDOM%2))

if [ $empPresent -eq $randomCheck ]
then
	echo "Employee is Present"

		empTotalHrs=8
		empRatePerHr=20
		salary=$(($empTotalHrs*$empRatePerHr))

	echo "Salary of the employee is:" $salary
else
	echo "Employee is Absent"
fi
