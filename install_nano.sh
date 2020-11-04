#!/usr/bin/env bash
#Compilation et installation du dernière version de l'éditeur nano
#zf201104.1532

#sources: https://devtidbits.com/2015/11/26/update-the-nano-text-editor-on-ubuntu/

echo "---------- compilation et instalation de Nano"

sudo apt-get build-dep nano
sudo apt-get install libmagic-dev

cd ~
wget http://www.nano-editor.org/dist/v2.9/nano-2.9.3.tar.gz
tar -xf nano-2.9.3.tar.gz
cd nano-2.9.3

./configure --enable-utf8

make
sudo apt-get remove nano
sudo make install

echo -e "
Installation du nouvel éditeur Nano terminée, vous devez faire un logout/login pour pouvoir l'utiliser !


For Uninstall
If you ever find yourself wanting to revert back to the original nano installed by Ubuntu, you can do the following removal.

sudo apt-get autoremove nano

You may need to remove the default configuration that was installed by nano 2.4.2 as it contains invalid directory paths.

sudo rm /etc/nanorc
rm /usr/local/bin/nano

Then install classic nano.

sudo apt-get install nano
nano -V

logoff/logon

"
