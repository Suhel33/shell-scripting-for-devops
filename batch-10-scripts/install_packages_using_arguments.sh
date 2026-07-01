#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Please pass a package name as an argument"
	echo "Usage: ./install_package_using_argument.sh <package_name>"
	exit 1
fi

echo "Installing $1"
sudo apt-get update && sudo apt install $1

echo "Successfully installed $1"
