#!/bin/bash -x

NAME_PAT="^[[:upper:]][[:lower:]]{2,}$"

EMAIL_PAT="^[a-zA-Z0-9]+([._+-][0-9a-zA-Z]+)*@[a-zA-Z0-9]+[.][a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"

MOB_NUM_PAT="^[1-9]{2}[ ]*[6-9]{1}[0-9]{9}$"

PSWD_PAT1=".{8,}"
PSWD_PAT2="[[:upper:]]+"
PSWD_PAT3="[0-9]+"
PSWD_PAT4="[^0-9a-zA-Z]{1}"

patternValidator(){
	if [[ $1 =~ $2 ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}

moblieNumValidator(){
	if [[ $mobileNum =~ $MOB_NUM_PAT ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}

pswdValidator(){
	if [[ $1 =~ $PSWD_PAT1 && $1 =~ $PSWD_PAT2 && $1 =~ $PSWD_PAT3 && $1 =~ $PSWD_PAT4 ]]
	then
		echo Valid
	else
		echo Invalid
	fi
}

echo "enter first name"
read fName

patternValidator $fName $NAME_PAT

echo "enter last name"
read lName

patternValidator $lName $NAME_PAT

echo "enter email"
read email

patternValidator $email $EMAIL_PAT

echo "enter mobile number"
read mobileNum

moblieNumValidator

echo "enter password"
read pswd

pswdValidator $pswd
