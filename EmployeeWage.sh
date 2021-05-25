#!/bin/bash
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM"

WorkHr=0
Month=20
WagePerHr=20
MonthWage=0

for (( i=1; i<=$Month; i++ ))
do
        if [ $WorkHr -lt 100 ]
        then
                Random=$((RANDOM%3))
                case $Random in

                        1) #echo "Employee is Full Time Present"
                                DayHr=8
                                WageCalc=$(($WagePerHr*$DayHr))
                                MonthWage=$(($MonthWage+$WageCalc))
                                WorkHr=$(($WorkHr+$DayHr)) ;;
                        2) #echo "Employee is Part Time Present"
                                DayHr=4
                                WageCalc=$(($WagePerHr*$DayHr))
                                MonthWage=$(($MonthWage+$WageCalc))
                                WorkHr=$(($WorkHr+$DayHr)) ;;
                        0) #echo "Employee is Absent"
                                DayHr=0

                esac
        else
                break;
        fi
done
#echo "The Employee's Daily Wage is : $WageCalc"
#echo "The Employee Monthly Wage is : $MonthWage"
echo "The Employee Monthly wage is $MonthWage Rupee for $WorkHr Hr in $(($i-1)) days"

