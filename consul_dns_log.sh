#!/usr/bin/env bash
#Petit script pour voir les logs du DNS de consul
#zf170519.1605

echo ---------- lance les logs du DNS

cd /home/ubuntu
sudo tcpdump -s 0 -l -n port 53 |grep -v 'sdftests' |grep -v 'billetmedia' >> logsdns.log

