#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

while (( $totalEmpHr < $maxRateInMonth && $totalWorkingDays < $numOfWorkingDays ))
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$isPartTime )
			empHr=4
		;;
		$isFullTime )
			empHr=8
		;;
		* )
			empHr=0
		;;
	esac
	totalEmpHr=$(($totalEmpHr+$empHr))
done

totalSalary=$(($totalEmpHr*$empRatePerHr))

echo $totalSalary

