#!/bin/bash
#Petit client bash pour le zDynDNS, version 2
#zf170408.1157, zf210421.1559

while true
do
	date
#	THEIP=$(/sbin/ifconfig ens18 | /bin/grep "inet ad" | /usr/bin/cut -f2 -d: | /usr/bin/awk '{print $1}')
	THEIP=$(hostname -I)
	ZSTR=$(hostname)
	echo "s "$ZSTR" "$THEIP | netcat sdftests.epfl.ch 3318
	sleep $[ ( $RANDOM % 5 ) + 10 ]s
done



