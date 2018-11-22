#Esercizio 1
#Realizzare uno script che permetta di uccidere un numero arbitrario
#di processi. I nomi dei processi da uccidere vengono passati come
#parametri della linea di comando dello script
#La linea di comando dovrà essere:
#zap <processo_1>...<processo_N>

#!/bin/bash

echo [DEBUG] Starting \"$0\"
echo [DEBUG] tot args: $#
echo [DEBUG] args: $@

for val do
	echo [DEBUG] element: $val
	echo [DEBUG] pid: $(pidof $val)
	X=$(pidof $val | cut -d ' ' -f 2)
	echo [DEBUG] Killing pid: $X
	ps
	kill -9 $X
done

