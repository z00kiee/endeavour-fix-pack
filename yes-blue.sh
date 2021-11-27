#!/bin/bash

echo "This script enable Bluetooth devices for EndeavourOS without the hassle"

echo "to enable Bluetooth devices TYPE: yes"
read yes
#Install Bluetooth
sudo pacman -S --needed bluez bluez-utils pulseaudio-bluetooth -y $yes
#Enabling Bluetooth From SystemD
echo "||Enabling Bluetooth Service||"
echo ""
sudo systemctl enable --now bluetooth
echo ""
echo "BLUETOOTH IS NOW ENABLE 🎧"
echo ""
echo "REBOOT THE COMPUTER"
echo ""
exit 0
