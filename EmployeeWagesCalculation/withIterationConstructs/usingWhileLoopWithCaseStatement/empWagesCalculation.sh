#!/bin/bash -x

# CONSTANT VARIABLES
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS_IN_MONTH=20

# VARIABLES
totalEmpHrs=0
totalWorkingDays=0

while [ $totalWorkingDays -lt $MAX_WORKING_DAYS_IN_MONTH ]
do
	empCheck=$((RANDOM%3))
	case $empCheck in
			$IS_FULL_TIME)
					empHrs=8
					;;
			$IS_PART_TIME)
					empHrs=4
					;;
			*)
					empHrs=0
					;;
	esac
	totalEmpHrs=$(($totalEmpHrs+empHrs))
					((totalWorkingDays++))
done
	totalSalaryOfMonth=$(($totalEmpHrs*$EMP_RATE_PER_HR))
	echo $totalSalaryOfMonth 
