#!/usr/bin/env bash
#Installation du keybsf sur Linux
#zf20240812.1415

echo -e "LANG=fr_CH.UTF-8\nLANGUAGE=fr_CH\nLC_ALL=fr_CH.UTF-8" | tee /etc/default/locale
sed -i 's/^# *\(fr_CH.UTF-8\)/\1/' /etc/locale.gen ; locale-gen ; reboot


