#!/bin/bash -x

fullTime=1
partTime=2
ratePerHr=20
randomCheck=$((RANDOM%3))

if [ $fullTime -eq $randomCheck ]
then
	empHrs=8
elif [ $partTime -eq $randomCheck ]
then
	empHrs=4
else
	empHrs=0
fi

salaryOfEmployee=$(($empHrs*$ratePerHr))

