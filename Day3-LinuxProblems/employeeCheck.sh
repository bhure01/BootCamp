#!/bin/bash -x

employeeisPresent=1;
randomCheck=$((RANDOM%2));

if [ $employeeisPresent -eq $randomcheck ];
then
	echo "EMPLOYEE IS PRESENT";
else
	echo "EMPLOYEE IS ABSENT";
fi
 
