#!/bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM"

isPresent=1
Random=$((RANDOM%2))

if [ $Random -eq $isPresent ]
then
	echo "Employee is Full Time Present"
else
	echo "Employee is Absent"
fi

