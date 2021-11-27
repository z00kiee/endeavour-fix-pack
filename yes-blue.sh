#!/bin/bash

#yes-blue
echo "This script enable bluetooth devices for endeavouros without the hassle"

echo "would you to enable bluetooth devices"
read yes
#Install Bluetooth and enable it
sudo pacman -S --needed bluez bluez-utils pulseaudio-bluetooth -y $yes
echo "Enabling Bluetooth Service"
sudo systemctl enable --now bluetooth

echo "DONE :) You can Ctrl+C to exit now"
