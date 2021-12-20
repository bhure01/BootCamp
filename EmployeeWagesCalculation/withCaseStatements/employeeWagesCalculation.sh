#!/bin/bash -x 

fullTime=1
partTime=2
ratePerHr=20
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

salary=$(($empHrs*$ratePerHr))

echo salary of employee is $salary

