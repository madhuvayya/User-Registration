#!/bin/bash -x

echo "enter first name"
read fName

fNamePatt="^[[:upper:]][[:lower:]]{2,}$"

if [[ $fName =~ $fNamePatt ]]
then
	echo Valid
else
	echo Invalid
fi
