#!/bin/bash

echo Welcome to Employee Wage Computation Program
wageperHour=20
dailyHours=8
fullTime=1
partTime=2
workDays=20
maxHours=100
days=1
for (( i=0 ; $days<=$workDays ; i++ ))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		$fullTime)
			dailyHours=8
			((days++))
			;;
		$partTime)
			dailyHours=4
			((days++))
			;;
		*)
			dailyHours=0
			;;
	esac
	completeHours=$(($completeHours+$dailyHours))
	empWageperMonth=$(($completeHours*$wageperHour))
	if (( $completeHours >= $maxHours ))
	    then
                echo "Total working Hours = 100"
                break
        fi
done
echo "Employee Wage for month : Rs. $empWageperMonth "
