#!/bin/bash -x

NAME_PATTERN="^[[:upper:]][[:lower:]]{2,}$"
EMAIL_PATTERN="^[a-zA-Z0-9]+([._+-][0-9a-zA-Z]+)*@[a-zA-Z0-9]+[.][a-zA-Z]{2,4}([.][a-zA-Z]{2})$"

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

patternValidator $fName $NAME_PATTERN

echo "enter last name"
read lName

patternValidator $lName $NAME_PATTERN

echo "enter email"
read email

patternValidator $email $EMAIL_PATTERN
