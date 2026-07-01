#!/bin/bash

<< usage
Creates functions for system information
- RAM Used
- Storage Used
- Top Processes
usage

check_memory() {
	free -h | awk 'NR==2 {print $7}'
}

check_storage() {
	df -h | awk 'NR==2 {print $4}'
}

check_most_mem_consuming_process() {
	ps aux --sort=-%mem | awk 'NR==2 {print $1, $2, $4}'
}

show_details() {
	echo "============System Details================="
	echo "Available Memory : $(check_memory)" 

	echo "Available Storage : `check_storage`"

	echo "Most Memory Intensive Process :  $(check_most_mem_consuming_process)"
}

show_details
