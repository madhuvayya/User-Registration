#!/bin/bash -x

NAME_PATTER="^[[:upper:]][[:lower:]]{2,}$"

patternValidator(){
	if [[ $1 =~ $2 ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}

echo "enter first name"
read fName

patternValidator $fName $NAME_PATTER

echo "enter last name"
read lName

patternValidator $lName $NAME_PATTER
