#!/bin/bash -x


#CONSTANTS VARIABLES
IS_FULL_TIME=1;
IS_PART_TIME=2;
EMP_RATE_PER_HRS=20;
MAX_WORKING_DAY_IN_MONTH=20;

#VARIABLES
totalWorkingDays=0;


function getWorkingHrs()
{
   case $1 in
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

   echo $empHrs
}


while [ $totalWorkingDays -lt $MAX_WORKING_DAY_IN_MONTH ]
do

   ((totalWorkingDays++));

   empHrs=$( getWorkingHrs $((RANDOM%3)) );
   dayByDaySalary=$(($empHrs*$EMP_RATE_PER_HRS));
   arrayOfEmpWages[$totalWorkingDays]=$dayByDaySalary;

   totalEmpHrs=$(($totalEmpHrs+empHrs));
done
   echo "Daily Wages" ${arrayOfEmpWages[@]};
   echo "length of the array" ${#arrayOfEmpWages[@]}

for ((day=0; day<${#arrayOfEmpWages[@]}; day++))
do
   daySalary=${arrayOfEmpWages[$day]
   totalSalaryOfEmp=$((totalSalaryOfEmp+daySalary))
done

   echo "Total Salary of the employee" $totalSalaryOfEmp;
