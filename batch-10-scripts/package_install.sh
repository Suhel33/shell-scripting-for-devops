#!/bin/bash

# This script takes the package name from user and installs it.
read -p "Enter the package name : " package_name
echo "Updating system & installing package $package_name"

sudo apt-get update
sudo apt install $package_name -y
sudo apt list --upgradable

read -p "Enter the service name : " service_name
sudo systemctl start $service_name
sudo systemctl status $service_name
