#!/bin/bash

# conditions ho to if statement mein squre brackets lagte h [ -gt -lt -e -d -f = != ] 
# when you write commands in if statement then you don't need to put square brackets.
read -p "Enter the package name : " package_name

echo "Checking if package is already installed...."
if dpkg -s $package_name >/dev/null 2>&1 ; then
	echo "$package_name already installed."
	exit 1	# exit 1 for terminate the script
else
	echo "Continue installation...."

	echo "Updating system & Installing $package_name"
	sudo apt-get update
	sudo apt install $package_name -y
fi

read -p "Enter the service name : " service_name

sudo systemctl start $service_name
systemctl status $service_name

