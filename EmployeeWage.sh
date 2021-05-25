#!/bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM"

isPresent=1
WagePerHr=20
FullDayHr=8
Random=$((RANDOM%2))


if [ $Random -eq $isPresent ]
then
	echo "Employee is Full Time Present"
	EmpWageCalc=$(($WagePerHr*$FullDayHr))	
	echo "Daily Wage of an Full Time Present Employee is : $EmpWageCalc"
else
	echo "Employee is Absent"
fi






