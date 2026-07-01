#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Please pass a file name as an argument"
	echo "Usage: ./if_file_exists_using_argument.sh <file_name>"
	exit 1
else
	if [ -f $1 ]
	then
		echo "File exists"
	else
		echo "File does'nt exists"
	fi
fi

