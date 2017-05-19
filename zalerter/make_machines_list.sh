#!/usr/bin/env bash
#petit script pour créer facilement la liste de machines à patcher 
#zf170519.0831

echo ---------- make_machines_list start

echo d | nc sdftests.epfl.ch 3318 | grep "$1" | grep `date +%y%m%d.%H` | grep -v '\.116\.' | awk {'print $1'} | sort > machines.txt
cat machines.txt

