#!/bin/bash-x

echo Welcome to Employee Wage Computation Program
wageperHour=20
dailyHours=8
fullTime=1
partTime=2
workDays=20
for (( day=1; day<=workDays; day++))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		$fullTime)
			dailyHours=8
			;;
		$partTime)
			dailyHours=4
			;;
		*)
			dailyHours=0
			;;
	esac
	empWage=$(($dailyHours*$wageperHour))
	empWageperMonth=$(($empWageperMonth+$empWage))
done
echo "Employee Wage for month : Rs. $empWageperMonth "

