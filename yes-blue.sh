#!/bin/bash

#yes-blue
echo "This script enable bluetooth devices for endeavouros without the hassle"

echo "would you to enable bluetooth devices {Type y for yes]"
read y
#Install Bluetooth and enable it
sudo pacman -S --needed bluez bluez-utils pulseaudio-bluetooth -y $y
echo "Enabling Bluetooth Service"
sudo systemctl enable --now bluetooth
exit
