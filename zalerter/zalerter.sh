#!/usr/bin/env bash
#zalerter, Le Nagios du pauvre, petit script tout simple qui permet d'envoyer des messages d'alertes sur Telegram en fonction de 'recettes' simples 
#qui tournent en remote sur les machines qui se trouvent dans le fichier machines.txt
#zf170519.1528

echo ---------- zalerter start
sshoptions="-q -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
#echo "Enter sudo password: " ; read -s password
password="password"


./make_machines_list.sh \.92\.104\.


filelines=`cat machines.txt`
for m in $filelines ; do
	echo ---------- start on $m
	scp $sshoptions ./df_all.sh ubuntu@$m:.
	echo $password | ssh -t -t $sshoptions ubuntu@$m "~/df_all.sh $m" |grep -v $password
	ssh $sshoptions ubuntu@$m 'rm ~/df_all.sh'
done
