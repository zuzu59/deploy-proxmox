#!/usr/bin/env bash
#zansible, Ansible du pauvre pour exécuter très facilement un script en remote sur une liste de machines
#zf170331.0906

echo ---------- zansible start
sshoptions="-q -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
echo "Enter sudo password: " ; read -s password

filelines=`cat machines.txt`
for m in $filelines ; do
	echo ---------- start on $m
	scp $sshoptions ./script.sh ubuntu@$m:.
	echo $password | ssh -t -t $sshoptions ubuntu@$m "~/script.sh $m" |grep -v $password
	ssh $sshoptions ubuntu@$m 'rm ~/script.sh'
done
