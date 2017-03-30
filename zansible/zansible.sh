#!/usr/bin/env bash
#zansible, Ansible du pauvre pour exécuter très facilement un script en remote sur une liste de machines
#zf170330.1733

echo ---------- zansible start

echo "Enter sudo password: " ; read -s password

filelines=`cat machines.txt`
for m in $filelines ; do
	echo ---------- start on $m
	scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ./script.sh ubuntu@$m:.
	echo $password | ssh -t -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@$m '~/script.sh'
	ssh ubuntu@$m 'rm ~/script.sh'
done
