#!/bin/bash -x

echo Welcome to Employee Wage Computation Program
wageperHour=20
dailyHours=8
fullTime=1
partTime=2
workDays=20
maxHours=100
totalEmpHours=0
days=1
while [ $totalEmpHours -le $maxHours -a $days -le $workDays ]
do
	empCheck=$((RANDOM%3))
	((days++))
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
	totalEmpHours=$(($totalEmpHours+$dailyHours))
	empWageperMonth=$(($totalEmpHours*$wageperHour))
done
echo "Employee Wage for month : Rs. $empWageperMonth "
