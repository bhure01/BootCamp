#!/bin/bash -x

fullTime=1
partTime=2

ratePerHr=100
numberOfWorkingDays=20

for((day=1;day<=numberOfWorkingDays;day++))
do
	empCheck=$((RANDOM%3))

	case $empCheck in
		$fullTime)
			empHrs=8
			;;
		$partTime)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac

	# IT IS CALCULATING DAY BY DAY SALARY

	salaryOfOneDay=$(($empHrs*$ratePerHr))
	salaryOfOneMonth=$((salaryOfOneMonth+salaryOfOneDay))
done
	echo Salary of Month is : $salaryOfOneMonth

