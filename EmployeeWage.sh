#!/bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM"

WagePerHr=20
Random=$((RANDOM%3))

case $Random in

	1) echo "Employee is Full Time Present"
	   DayHr=8 ;;
	2) echo "Employee is Part Time Present"
	   DayHr=4 ;;
	0) echo "Employee is Absent"
	   DayHr=0 ;;
esac
WageCalc=$(($WagePerHr*$DayHr))
echo "The Employee's Wage is : $WageCalc"





