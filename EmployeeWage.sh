#!/bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM"

Month=20
WagePerHr=20
MonthWage=0

for (( i=1; i<=$Month; i++ ))
do
	Random=$((RANDOM%3))
	case $Random in

		1) #echo "Employee is Full Time Present"
	   		DayHr=8
			WageCalc=$(($WagePerHr*$DayHr))
			MonthWage=$(($MonthWage+$WageCalc)) ;;
		2) #echo "Employee is Part Time Present"
	   		DayHr=4
			WageCalc=$(($WagePerHr*$DayHr))
			MonthWage=$(($MonthWage+$WageCalc)) ;;
		0) #echo "Employee is Absent"
	   		DayHr=0
			WageCalc=$(($WagePerHr*$DayHr))
			MonthWage=$(($MonthWage+$WageCalc)) ;;
	esac
done
#echo "The Employee's Daily Wage is : $WageCalc"
echo "The Employee Monthly Wage is : $MonthWage"
