#!/bin/bash
# Filename: menu.bash

# Generate reports folder if not exists
mkdir -p reports

# Init values
recorderScript="recorder.bash"
sleepTime=5
maxKBSize=24

# Clear before launch echo
clear

while true
do
  echo "----------------------"
  echo -e "Monitoraggio server. Comandi disponibili:\\n"
	echo -e "[1] Inizia Monitoraggio"
  echo -e "[2] Ferma Monitoraggio"
  echo -e "[3] Stampa Info Utilizzo"
  echo -e "[4] Check Space"
  echo -e "[5] Chiudi\\n"
	read -p "Inserisci numero comando [1-5]: " parameter

	#Validate parameter
	case "$parameter" in
		"1" ) # Launch recorder.bash /w sleep as parameter
          pidRecoerder=$(ps -x | grep "/bin/bash ./recorder.bash" | grep -v grep | cut -d ' ' -f1)
					if [[ -z $pidRecoerder ]]; then
            bash recorder.bash $sleepTime &
            echo -e "[DEBUG] Lancio recorder.bash con sleep: $sleepTime\\n"
          else
            echo -e "[ERR] recorder.bash già lanciato\\n"
          fi
					;; # End case 1

		"2" ) # Kill recorder.bash
          pidRecoerder=$(ps -x | grep "recorder.bash" | grep -v grep | cut -d ' ' -f1)
          if [[ -z $pidRecoerder ]]; then
            echo -e "[ERR] recorder.bash non è in esecuzione\\n"
          else
            # -13 no standard output
            kill -13 $pidRecoerder
            echo -e "[DEBUG] Recorder killato\\n"
          fi
          ;;# End case 2

		"3" ) # Launch query.bash
          bash query.bash
          ;; # End case 3

    "4" ) # Launch checkSpace.bash
          bash checkSpace.bash "$maxKBSize"
          ;; # End case 4

		"5" ) # Exit from script
          exit
          ;; # End case 5
	esac
done
