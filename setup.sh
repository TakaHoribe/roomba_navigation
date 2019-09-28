#!/bin/bash

# add udev rule for ydlidar
sudo ./ros/src/ydlidar/startup/initenv.sh

# add udev rule for roomba
sudo touch /etc/udev/rules.d/roomba.rules
echo 'KERNEL=="ttyUSB*", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", MODE:="0666", SYMLINK+="roomba"' | sudo tee /etc/udev/rules.d/roomba.rules

