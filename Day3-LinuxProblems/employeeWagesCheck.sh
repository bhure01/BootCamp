#!/bin/bash -x

present=1;
randomCheck=$((RANDOM%2));

if [ $present -eq $randomCheck ];
then
	echo "Emp is Present";
else
	echo "Emp is Absent";
fi

