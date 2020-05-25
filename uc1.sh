#!/bin/bash -x

present=1
attendance=$((RANDOM%2))
if [ $attendance -eq $present ]
then
   echo "Employee Present"
else
   echo "Emmployee Absent"
fi
