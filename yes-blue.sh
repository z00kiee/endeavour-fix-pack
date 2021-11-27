#!/bin/bash

echo "This script enable bluetooth devices for endeavouros without the hassle"

echo "would you to enable bluetooth devices yes or no"
read yes
read no

#Install Bluetooth
sudo pacman -S --needed bluez bluez-utils pulseaudio-bluetooth -y $yes
