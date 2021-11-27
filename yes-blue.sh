#!/bin/bash

echo "This script enable bluetooth devices for endeavouros without the hassle"

echo "to enable bluetooth devices TYPE: yes"
read yes
#Install Bluetooth
sudo pacman -S --needed bluez bluez-utils pulseaudio-bluetooth -y $yes
#Enabling Bluetooth From SystemD
echo "Enabling Bluetooth Service"
sudo systemctl enable --now bluetooth
echo "BLUETOOTH IS NOW ENABLE 🎧" 
echo "REBOOT THE COMPUTER"
exit
