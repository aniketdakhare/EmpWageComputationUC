#!/bin/bash -x

echo Welcome to Employee Wage Computation Program
wageperHour=20
dailyHours=8
fullTime=1
partTime=2
empCheck=$((RANDOM%3))
case $empCheck in
	$fullTime)
		echo "Fulltime Employee"
		dailyHours=8
		;;
	$partTime)
		echo "Part Time Employee"
		dailyHours=4
		;;
	*)
		echo "Employee is Absent"
		dailyHours=0
		;;
esac
empWage=$(($dailyHours*$wageperHour))

echo "Daily Employee Wage : Rs. $empWage "
