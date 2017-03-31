#!/usr/bin/env bash
#petit script pour créer facilement la liste de machines à patcher 
#zf170331.0907

echo ---------- make_machines_list start

echo d | nc sdftests.epfl.ch 3318 | grep "$1" | awk {'print $1'} | sort > machines.txt
cat machines.txt

