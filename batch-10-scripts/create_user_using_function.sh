#!/bin/bash

<< usage
- take user name as input
- take password as input
- check if user already exists
- create the user
usage

create_user(){
read -p "Enter the username : " username
read -p "Enter the password : " password

if id "$username" &> /dev/null
then
	echo "The user $username already exists and exiting the code."
else
	echo "The user $username does'nt exists and will be created."
	echo "Create user $username "
	sudo useradd -m $username -p $password

	echo "User $username added successfully ....."
fi

}

# function call
<< disclaimer
we don't need to call the function inside this script
beacause this script is used from outside by the ./add_user_using_function script file
that's why this lopp is commented.

while true
do
	read -p "Do you want to create a user? (y/n) : " choice

	case "$choice" in
		y|Y)
			create_user
			;;
		n|N)
			echo " Exiting create_user function, No more users will be created."
			break
			;;
		*)
			echo "Invalid input. Please enter y or n."
			;;
	esac
done

disclaimer


# show user

show_user() {

	read -p "Do you want to show all users? (y/n) : " choice

	if [ "$choice" = "y" ]
	then
		cut -d: -f1 /etc/passwd	# show all user
	else
		read -p "Enter the username which you want to show : " show_username
		getent passwd $show_username
	fi
}

# show_user


# remove user

remove_user(){
	read -p "Enter username to remove : " rem_user

	if id "$rem_user" &>/dev/null
	then
		echo "Remove user $rem_user....."
		sudo userdel -r $rem_user

		echo "Removed user $rem_user successfully....."
	else
		echo "$rem_user does'nt exists."
	fi

}

# function call

<< Use_function_outside
This function is used from outside by ./add_user_using_function.sh and calling funcrion
That's why loop is commented.
and do not call the function inside this script.


while true
do
	read -p "Do you want to remove a user ? (y/n) : " choice
	
	case "$choice" in
		y|Y)
			remove_user
			;;
		n|Y)
			echo "Exiting remove_user function, No more users will be removed."
			break
			;;
		*)
			echo "Invalid input. Please enter y or n."
			;;
	esac
done

Use_function_outside



