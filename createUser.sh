#!/bin/bash

#ask the user for the user's name
echo "What is the user's name?"
read user_name

# Check if the user already exists
if id -u "$user_name" >/dev/null 2>&1; then
	echo "User $user_name already exists."
	exit 1
fi

#create a new user
useradd $user_name 1>/dev/null

#list the new created user details to the terminal
echo "Done. Here is the new user details:"
grep $user_name /etc/passwd
