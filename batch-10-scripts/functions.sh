#!/bin/bash

<< usage
outside the function:-
	./function.sh hello

inside function call:-
	install_package <service_name>

usage

echo "$1 is the main argument passed to the script"

# function definition

haldi() {
echo "Haldi Lagao"
echo "This is the first function."

}

install_package() {
	echo "$1 is the local argument passed to the function."
	sudo apt-get update && sudo apt install $1
}

haldi # function call without argument

install_package docker.io # function call with argument

