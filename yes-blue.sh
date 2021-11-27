#!/bin/bash
echo ""
echo "This script enable Bluetooth devices for EndeavourOS without the hassle"
echo ""
echo "To enable Bluetooth devices TYPE: yes"
echo ""
read yes
#Install Bluetooth
sudo pacman -S --needed bluez bluez-utils pulseaudio-bluetooth -y $yes
#Enabling Bluetooth From SystemD
echo "||Enabling Bluetooth Service||"
sudo systemctl enable --now bluetooth
echo ""
echo "BLUETOOTH IS NOW ENABLE 🎧"
exit
