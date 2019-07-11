#!/usr/bin/env bash
#Installation de Ansible
#zf190711.1030

echo "---------- install de Ansible"


sudo apt update
sudo apt install -y python3 python3-pip hiera-eyaml
sudo -H pip3 install ansible bcrypt
sudo gem install hiera-eyaml

#installation du plugin pour openshift
ansible-galaxy install epfl_idevelop.ansible_module_openshift

