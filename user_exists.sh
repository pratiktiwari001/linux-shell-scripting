#!/bin/bash

<<help
To check whether the  user exists or not
help

read -p "Enter the username: " username

if [ $(cat /etc/passwd | grep "$username" | wc | awk '{print $1}') == 0 ]
then
	echo "No user exists"
else
	echo "User exists"
fi

