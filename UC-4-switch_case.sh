#!/bin/bash -x

empRatePerHr=20
fullTime=1
partTime=2
randomCheck=$((RANDOM%3))

case $randomCheck in
			$fullTime )
				empHrs=8
			;;
			$partTime )
				empHrs=4
			;;
			*)
				empHrs=0
			;;
esac

salary=$(($empRatePerHr*$empHrs))
echo $salary
