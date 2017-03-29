#!/usr/bin/env bash
#Petit script pour créer mon environnement git ;-)
#zf170329.1804


#export GIT_AUTHOR_NAME="Christian Zufferey"
#export GIT_AUTHOR_EMAIL="christian@zufferey.com"
#export GIT_COMMITTER_NAME="Christian Zufferey"
#export GIT_COMMITTER_EMAIL="christian@zufferey.com"


git config --global user.name "Christian Zufferey"
git config --global user.email "christian@zufferey.com"
git config --global credential.helper "cache --timeout=300"
git config --global core.editor nano

alias gtree='git log --graph --oneline --decorate --all'

git config -l
env |grep GIT



echo "end"

