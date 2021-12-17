#!/bin/bash -x

empPresent=1;
randomCheck=$((RANDOM%2));

if [ $empPresent -eq $randomCheck ];
then
		totalHoursofEmployee=8;
		employeeWagesperHour=20;
		salary=$(( $totalHoursofEmployee * $employeeWagesperHours ));
else
	salary=0;
fi

