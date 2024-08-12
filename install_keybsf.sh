#!/usr/bin/env bash
#Installation du keybsf sur Linux
#zf20240812.1439


# pour pouvoir l'installer en seulement une ligne copier/coller
# wget -qO- https://raw.githubusercontent.com/zuzu59/deploy-proxmox/master/install_keybsf.sh > /tmp/install_keybsf.sh && chmod +x /tmp/install_keybsf.sh && /tmp/install_keybsf.sh




echo -e "LANG=fr_CH.UTF-8\nLANGUAGE=fr_CH\nLC_ALL=fr_CH.UTF-8" | tee /etc/default/locale
sed -i 's/^# *\(fr_CH.UTF-8\)/\1/' /etc/locale.gen ; locale-gen

echo ""
read -p "Il faut redémarrer pour que cela soit utilisable !"
read -p "Etes-vous certains ?"
echo ""

reboot


