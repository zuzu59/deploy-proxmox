#!/usr/bin/env bash
#Install  nodejs
#zf170314.1349

echo ---------- install de nodejs

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
node -v
npm -v


