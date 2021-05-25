#!/bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM"
isAbsent=0
isPresent=1
isPartPresent=2
WagePerHr=20
FullDayHr=8
PartDayHr=4
Random=$((RANDOM%3))


if [ $Random -eq $isPresent ]
then
	echo "Employee is Full Time Present"
	EmpWageCalc=$(($WagePerHr*$FullDayHr))	
	echo "Daily Wage of an Full Time Present Employee is : $EmpWageCalc"
elif [ $Random -eq $isPartPresent ]
then
	echo "Employee is Part Time Present"
	EmpWageCalc=$(($WagePerHr*$PartDayHr))
	echo "Daily Wage of an Part Time Present Employee is : $EmpWageCalc"

else
	echo "Employee is Absent"
fi






