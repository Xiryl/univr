#!/bin/bash
# Filename: checkSpace.bash

cd reports/ || exit

# Max folder size (KB)
maxKBSize="$1"

while true
do
	# Check if folder is empty
	if [ -z "$(ls -A)" ]; then
   exit
 fi

	# Get total KB value of folder
	totalKBValue=$(du -s -c *.csv | tail -n 1 | cut -f1)

	# If totalKBValue > maxKBSize remove the report
	if [[ "$totalKBValue" -gt "$maxKBSize" ]]; then
		olderFile=$(find *.csv | sort -d | head -n1)
		rm -r "$olderFile"
	else
		exit
	fi
done
