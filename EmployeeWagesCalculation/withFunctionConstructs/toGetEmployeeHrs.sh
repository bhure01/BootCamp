#!/bin/bash -x

#CONSTANT VARIABLES
FULL_TIME=1
PART_TIME=2
RATE_PER_HR=20
MAX_WORKING_DAYS_IN_MONTH=20

#VARIABLES
totalEmpHrs=0
totalWorkingDays=0

function getWorkingHrs()
{
	case $1 in
		$FULL_TIME)
			empHrs=8
			;;
		$PART_TIME)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac
	echo $empHrs
}

while [ $totalWorkingDays -le $MAX_WORKING_DAYS_IN_MONTH ]
do
	empHrs=$(getWorkingHrs $((RANDOM%3)) )
	totalEmpHrs=$(($totalEmpHrs+empHrs))
	((totalWorkingDays++))

done
	salaryOfMonth=$(($totalEmpHrs*$RATE_PER_HR))
	echo Total Salary Of Month is $salaryOfMonth
