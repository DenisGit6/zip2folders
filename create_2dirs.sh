#!/bin/bash


#This condition checks if the number of 
#arguments passed ($#) is not equal to 2 (-ne 2).
if [ "$#" -ne 2 ]; then
	echo "error"
	exit 1
fi

#check arg are dirs
if [ ! -d "$1" ] || [ ! -d "$2" ]; then
	echo "error"
	exit 1
fi

# Create a directory with the current year inside 
#the second directory
year=$(date "+%Y")
mkdir -p "$2/$year"

# Archive and compress the first directory into 
#"backup.tar.gz" inside the new directory
tar -czf "$2/$year/backup.tar.gz" -C "$1" .
