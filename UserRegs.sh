#!/bin/bash -x

NAME_PATTERN="^[[:upper:]][[:lower:]]{2,}$"

EMAIL_PATTERN="^[a-zA-Z0-9]+([._+-][0-9a-zA-Z]+)*@[a-zA-Z0-9]+[.][a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"

MOBILE_NUMBER_PATTERN="^[1-9]{2}[ ]*[6-9]{1}[0-9]{9}$"

PASSWORD_PATTERN1=".{8,}"
PASSWORD_PATTERN2="[[:upper:]]+"
PASSWORD_PATTERN3="[0-9]+"
PASSWORD_PATTERN4="[^0-9a-zA-Z]{1}"

nameEmailValidator(){
	if [[ $1 =~ $2 ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}

moblieNumberValidator(){
	if [[ $mobileNumber =~ $MOBILE_NUMBER_PATTERN ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}

passwordValidator(){
	if [[ $1 =~ $PASSWORD_PATTERN1 && $1 =~ $PASSWORD_PATTERN2 && $1 =~ $PASSWORD_PATTERN3 && $1 =~ $PASSWORD_PATTERN4 ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}

echo "enter first name"
read firstName

nameEmailValidator $firstName $NAME_PATTERN

echo "enter last name"
read lastName

nameEmailValidator $lastName $NAME_PATTERN

echo "enter emailId"
read emailId

nameEmailValidator $emailId $EMAIL_PATTERN

echo "enter mobile number"
read mobileNumber

moblieNumberValidator

echo "enter password"
read password

passwordValidator $password
