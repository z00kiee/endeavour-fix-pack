#!/bin/bash
echo "----------------------------------------------------------------"
echo "starting the block unblock cycle please enter password to start"
echo "----------------------------------------------------------------"
sudo rfkill block bluetooth
sudo rfkill unblock bluetooth
sudo systemctl restart bluetooth
echo "---------"
echo "is it on?"
echo "---------"
rfkill
bluetooth hci0   blocked unblocked
echo "----------------------------------"
echo "This will hopefully fix Bluetooth"
echo "----------------------------------"
exit
