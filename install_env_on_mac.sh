#!/usr/bin/env bash
#Install mes environnement sur MAC
#zf200513.1402

# rm ~/.bashrc ~/.bash_profile ~/.nanorc

echo ---------- install des utilitaires

echo "source ~/deploy-proxmox/alias" >> ~/.bashrc
echo "source ~/deploy-proxmox/zfunctions.sh" >> ~/.bashrc

echo "export GIT_AUTHOR_NAME=\"Christian Zufferey\"" >> ~/.bashrc
echo "export GIT_AUTHOR_EMAIL=\"christian@zufferey.com\"" >> ~/.bashrc
echo "export GIT_COMMITTER_NAME=\"Christian Zufferey\"" >> ~/.bashrc
echo "export GIT_COMMITTER_EMAIL=\"christian@zufferey.com\"" >> ~/.bashrc

echo "export EDITOR=nano" >> ~/.bashrc
echo "export LANG=en_US.UTF-8" >> ~/.bashrc

echo "export PROMPT_COMMAND=\"history -a; history -c; history -r; \$PROMPT_COMMAND\""  >> ~/.bashrc

~/deploy-proxmox/env_a_zuzu.sh

echo "source ~/.bashrc" >> ~/.bash_profile

echo "set tabstospaces" >> ~/.nanorc
echo "set tabsize 4" >> ~/.nanorc
echo "include /usr/local/share/nano/*.nanorc" >> ~/.nanorc
