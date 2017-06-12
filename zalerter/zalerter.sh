#!/usr/bin/env bash
#zalerter, Le Nagios du pauvre, petit script tout simple qui permet d'envoyer des messages d'alertes sur Telegram en fonction de 'recettes' simples 
#qui tournent en remote sur les machines qui se trouvent dans le fichier machines.txt
#zf170612.1554

echo ---------- zalerter start
sshoptions="-q -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
#echo "Enter sudo password: " ; read -s password
password="password"

echo ---------- occupation du disque Proxmox

echo -e ""
./df_proxmox.sh
echo -e ""

./make_machines_list.sh \.10\.92\.
echo -e ""

echo ---------- reste sur les machines:

filelines=`cat machines.txt`
for m in $filelines ; do
	echo -e $m": \c"
	scp $sshoptions ./df_all.sh ubuntu@$m:.
	echo $password | ssh -t -t $sshoptions ubuntu@$m "~/df_all.sh $m" |grep -v $password
	ssh $sshoptions ubuntu@$m 'rm ~/df_all.sh'
done
