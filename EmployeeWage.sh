#!/bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM"

Month=20
WagePerHr=20
TotalWage=0
declare -a Day

function WorkingHr
{	
	case $1 in
		1) echo "8";;
		2) echo "4";;
		0) echo "0";;
	esac
}

for (( i=1; i<=$Month; i++ ))
do
                Random=$((RANDOM%3))
                Day[$i]=$(($WagePerHr*`WorkingHr $Random`))
                TotalWage=$(($TotalWage+${Day[$i]}))
done
echo -e "${Day[@]}\nAre the Daily Wages"
echo "Total Wage is $TotalWage "
