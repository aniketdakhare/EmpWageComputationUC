#!/bin/bash -x

echo Welcome to Employee Wage Computation Program
wageperHour=20
dailyHours=8
fullTime=1
partTime=2
empCheck=$((RANDOM%3))
if [ $empCheck -eq $fullTime ]
then
	dailyHours=8
elif [ $empCheck -eq $partTime ]
then
	dailyHours=4
else
	dailyHours=0
fi
empWage=$(($dailyHours*$wageperHour))

echo "Daily Employee Wage : Rs. $empWage "
