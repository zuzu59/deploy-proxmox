#!/bin/bash
#Petit client bash pour le zDynDNS
#zf170220.1848

while true
do
	date
	ZSTR=$(cat /etc/hostname)
	echo "s "$ZSTR" xyz" | netcat sdftests.epfl.ch 3318
	sleep $[ ( $RANDOM % 55 ) + 10 ]s
done



