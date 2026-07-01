#!/bin/bash

# Here are three ways to write for loop

# Method -1

echo "Method - 1"

for i in Apple Mango Bana
do
	echo "$i"
done

# Method -2 
echo "Method - 2"

for (( num=1 ; num<=5; num++ ))
do
	echo "$num"
done

# Method -3

echo "Method - 3"
for i in {1..5}
do
	echo "$i"
done

