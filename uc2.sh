#!/bin/bash -x

echo Welcome to Employee Wage Computation Program
wageperHour=20
dailyHours=8
present=1
attendance=$((RANDOM%2))
if [ $attendance -eq $present ]
then
   echo "Employee Present"
	dailyhours=8
else
   echo "Emmployee Absent"
	dailyhours=0
fi
perDayWage=$(($dailyHours*$wageperHour))

echo "Daily Employee Wage : Rs. $perDayWage "

