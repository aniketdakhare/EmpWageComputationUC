#!/bin/bash -x

echo Welcome to Employee Wage Computation Program
wageperHour=20
dailyHours=8
fullTime=1
partTime=2
workDays=20
maxHours=100
totalEmpHours=0
days=0
declare -A dailyWage

function workHours()
{
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
}

while [ $totalEmpHours -le $maxHours -a $days -lt $workDays ]
do
        empCheck=$((RANDOM%3))
        ((days++))
        workHours $empCheck
        totalEmpHours=$(($totalEmpHours+$dailyHours))
        dailyWage[Day"$days"]=$(($dailyHours*$wageperHour))
done
empWageperMonth=$(($totalEmpHours*$wageperHour))
echo "Employee Wage for month : Rs. $empWageperMonth "
echo ${dailyWage[@]}
echo ${!dailyWage[@]}
