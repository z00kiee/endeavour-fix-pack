#!/bin/bash

#yes-blue
echo "This script enable bluetooth devices for endeavouros without the hassle"

echo "to enable bluetooth devices TYPE: yes or no"
read yes
read no
#Install Bluetooth and enable it
#No bluetooth please
exit $no
sudo pacman -S --needed bluez bluez-utils pulseaudio-bluetooth -y $yes
echo "Enabling Bluetooth Service"
sudo systemctl enable --now bluetooth
echo "BLUETOOTH IS NOW ENABLE"
exit
