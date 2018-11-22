#!/bin/bash
# Filename: recorder.bash

# Generate reports folder if not exists
mkdir --parents reports

# [param = 0]
if [[ -z "$1" ]]; then
  echo [ERR] Missing sleep time argoument
  exit
fi

#echo [DEBUG] Executing "$0" /w sleep "$1"
#echo [DEBUG] Generating report..

while true
do
  # Generate report name
  FILENAME=reports/report_$(date +%Y%m%d_%H%M%S).csv

  # For debug
  # exTimeStart=$(date +"%T.%3N")

  # Prepare ps command
  # CSV File requied format: user,pid,command,start,cpu
  psout=$(ps --no-headers -eo user:32,pid,start,time,command | \
          tr --squeeze-repeats ' ' )

  # Output
  csvfile=""

  # Cycle all rows of ps output command
  # -r not allow backslashes to escape any characters
  while read -r row
  do
    # Build single out row
    u=$( echo "$row" | cut --delimiter=' ' --field=1) # User
    p=$( echo "$row" | cut --delimiter=' ' --field=2) # Process ID
    s=$( echo "$row" | cut --delimiter=' ' --field=3) # Start Time
    c=$( echo "$row" | cut --delimiter=' ' --field=5) # Command
    l=$( echo "$row" | cut --delimiter=' ' --field=4) # Cpu Time

    # Check if start time is 'Mmm dd' format
    if [ ${#s} -lt 8 ]; then
      s+=$( echo " $( echo "$row" | cut --delimiter=' ' --field=4)")
      c=$( echo "$row" | cut --delimiter=' ' --field=6)
      l=$( echo "$row" | cut --delimiter=' ' --field=5)
    fi

    # Append row to output
    csvfile+="$u;$p;$c;$s;$l\\n"
  done <<< "$psout"

  # Write generated output report file
  echo -e "$csvfile" >> "$FILENAME"

  # For Debug
  # exTimeEnd=$(date +"%T.%3N")

  # echo [DEBUG] Report generated /w name: "$FILENAME"
  # echo [DEBUG] Start time: "$exTimeStart"
  # echo [DEBUG] End   time: "$exTimeEnd"

  # Sleep aka args[1]
  sleep "$1"
done
