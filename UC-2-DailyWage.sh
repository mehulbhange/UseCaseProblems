#!/bin/bash -x

Present=1
randomCheck=$((RANDOM%2))

if [ $Present -eq $randomCheck ]
then
	empRatePerHr=25
	empHrs=9
	salary=$(( $empRatePerHr* $empHrs ))
else
	salary=0
fi
echo $salary
