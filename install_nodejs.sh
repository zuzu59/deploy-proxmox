#!/usr/bin/env bash
#Install  nodejs
#zf170314.1450

echo ---------- install de nodejs

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
sudo npm install -g nodemon
node -v
npm -v


