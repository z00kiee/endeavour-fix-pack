#!/bin/bash
echo ""
echo "------------------------------------------------------------------------"
echo "This script enable Bluetooth devices for EndeavourOS without the hassle"
echo "------------------------------------------------------------------------"
echo ""
echo "To enable Bluetooth devices"
echo "-----------------------------"
echo "TYPE: yes"
read yes
#Install Bluetooth
sudo pacman -S --needed bluez bluez-utils pulseaudio-bluetooth -y $yes
#Enabling Bluetooth From SystemD
echo "||Enabling Bluetooth Service||"
echo "-------------------------------"
sudo systemctl enable --now bluetooth
echo ""
echo "BLUETOOTH IS NOW ENABLE 🎧"
exit
