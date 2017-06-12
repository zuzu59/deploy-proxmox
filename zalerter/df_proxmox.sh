#!/usr/bin/env bash
#petit script pour afficher le pourcentage de disque restant sur le serveur Proxmox en remote
#zf170612.1542

#echo ---------- script start $1

#### indique l'espace disque restant
#df -h |grep '/dev/mapper' | awk {'print $4'}



ZFREE=`ssh root@10.92.103.31 "lvs --separator=' '|grep 'twi-aotz--'" | awk {'print $5'}`

echo On est a $ZFREE%





