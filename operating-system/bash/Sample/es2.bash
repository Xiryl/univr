#Esercizio 2
#Realizzare uno script che permetta di compattare con il comando tar
#un insieme di file passati come parametri alla linea di comando. Una volta compattati, i file #dovranno essere spostati nella cartella backup all'interno
#della cartella corrente. Se backup non esiste deve essere creata.
#La linea di comando dovrà essere:
#archive <file_1> ... <file_N>

#!/bin/bash

# Print some info
echo [DEBUG] Starting \"$0\"
echo [DEBUG] tot args: $#
echo [DEBUG] args: $@

# Create the .tar file
echo [INFO] create the zip
tar -czf compressed.tar.gz $*

# Chech if backup folder exists. If not, creare it
echo [DEBUG] check backup folder

if test ! -d 'backup'; then
	# backup folder don't exists
	echo [DEBUG] cant find folder, create it
	mkdir backup
fi

# Move the file to backup folder
echo [INFO] move file to backup folder
mv compressed.tar.gz ./backup/

