#!/bin/bash
# Filename query.bash

# Move to report dir, if command fail, exit
cd reports/ || exit

# Print some stuff
# echo [DEBUG] Executing "$0"

# ###########
# FIRST STEP
# ###########

# Get report name and check if exists reports
reportName=$(find ./*.csv | head -n 1)
if [[ -z "$reportName" ]]; then
  echo "[ERR] You need to launch recorder.bash first"
  exit
fi

outUsersXFile=''

# Get all users in the report
usersList=$(cat < "$reportName" | cut -d ';' -f1 | sort -d | uniq)

# For all users count the values in the report
for val in $usersList; do
	numberOfUsers=$(cat < "$reportName" | grep -c -w "$val")

	# Output row
	outUsersXFile+="$val: $numberOfUsers\\n"
done

# Std out user: quantity of process assigned
echo -e  "$outUsersXFile"

# ###########
# SECOND STEP
# ###########

while true
do
	# Read username ('p' aka standard output)
	read -r -p "Inserire utente:" parameter
	cmdRegex="^[a-zAz1-9]+$"

	# =~ for regex
	if [[ "$parameter" =~ $cmdRegex ]]; then
		break
	fi
done

for report in *.csv; do
	numberOfUsers=$(cat < "$report" | grep -c -w "$parameter")

	echo -e "$report: $numberOfUsers\\n"
done
