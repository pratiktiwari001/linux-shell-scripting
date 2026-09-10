#!/bin/bash

echo "Kya Haalchal"

echo "chal folder bana"

mkdir -p scripts_folder

#user-defined variables
name="Pratik"

echo "My name is $name"


#pre-defined variables
echo "The name of user is $USER"


#take input from user

read -p "Enter your primary skill? " skill

echo "Your Primary skill is $skill"


#input from argumnents

echo "============== User Creation Started =============="

sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"

echo "=============== User Creation Completed ============="

sudo userdel $1

echo "=============== User Deletion Completed ============="

if [ $(cat /etc/passwd | grep $1 | wc | awk '{print $1}') == 0 ]
then
	echo "as wc is 0, the user was deleted successfully"
else
	echo "the user was not deleted"
fi

