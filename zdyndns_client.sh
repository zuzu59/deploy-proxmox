#!/bin/bash
#Petit client bash pour le zDynDNS
#zf170221.1701

while true
do
	date
	ZSTR=$(hostname)
	echo "s "$ZSTR" xyz" | netcat sdftests.epfl.ch 3318
	sleep $[ ( $RANDOM % 5 ) + 10 ]s
done



