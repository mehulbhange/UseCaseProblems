#!/bin/bash -x

present=1
randomCheck=$((RANDOM%2))

if [ $present -eq $randomCheck ]
then
	echo "Present"
else
	echo "Not Present"
fi
