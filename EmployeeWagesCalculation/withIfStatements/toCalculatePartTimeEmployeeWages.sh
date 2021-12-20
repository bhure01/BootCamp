#!/bin/bash -x

fullTime=1
partTime=2
ratePerHr=20

randomCheck=$((RANDOM%3))

if [ $fullTime -eq $randomCheck ]
then
	echo "Employee is working as FullTime"
			fullTimeEmpHrs=8
			salaryFullTime=$(($fullTimeEmpHrs*$ratePerHr))
	echo Salary of Full Time Employee is $salaryFullTime
elif [ $partTime -eq $randomCheck ]
then
	echo "Employee is working as PartTime"
			partTimeEmpHrs=4
			salaryPartTime=$(($partTimeEmpHrs*$ratePerHr))
	echo  Salary of Part Time Employee is $salaryPartTime
else
	echo "Employee is Absent"
fi
