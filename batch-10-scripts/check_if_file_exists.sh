#!/bin/bash

# IF condition -> is used to check whether this or that

a=10
b=20

if [ $a -gt $b ]; then
	echo "$a is greater."
else
	echo "$b is greater."
fi

read -p "Enter the file path to be found : " file_path
if [ -f $file_path ]; then
	echo "File Exists"
else
	echo "File does'nt exists"
fi
