#!/usr/bin/env bash
#Petit script pour créer mon environnement git ;-)
#zf170222.1535

git config --global user.name "Christian Zufferey"
git config --global user.email "christian@zufferey.com"
git config --global credential.helper "cache --timeout=86400"

alias gtree='git log --graph --oneline --decorate --all'

git config -l



echo "end"

