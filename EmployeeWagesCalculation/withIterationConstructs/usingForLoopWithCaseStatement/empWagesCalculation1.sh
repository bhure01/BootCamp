#!/bin/bash -x
partTime=1;
fullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM%3));

case $empCheck in
		$partTime)
			empHrs=4
			;;
		$fullTime)
			empHrs=8
			;;
		*)
			empHrs=0
			;;
esac

salary=$(($empHrs * $empRatePerHr));

echo Total salary is $salary

