#!/bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM"

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


read -p "Enter the day for total wage : " nmb
for (( i=1; i<=$nmb; i++ ))
do
                Random=$((RANDOM%3))
                Day[$i]=$(($WagePerHr*`WorkingHr $Random`))
                TotalWage=$(($TotalWage+${Day[$i]}))
done
for i in ${!Day[@]}
do
	echo "Day $i = ${Day[$i]}"
done

echo "Total Wage is $TotalWage for $nmb days "
