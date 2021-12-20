#!/bin/bash -x

fullTime=1
partTime=2
ratePerHr=20
empCheck=$((RANDOM%3))

case $empCheck in
	$fullTime)
		fullTimeEmpHrs=8
		salaryFullTimeEmp=$(($fullTimeEmpHrs*$ratePerHr))
		echo Salary of Full Time Employee is $salaryFullTimeEmp
		;;

	$partTime)
		partTimeEmpHrs=4
		salaryPartTimeEmp=$(($partTimeEmpHrs*$ratePerHr))
		echo Salary of Part Time Employee is $salaryPartTimeEmp
		;;

	*)
		empHrs=0
		echo Employee is Absent
		;;
esac
