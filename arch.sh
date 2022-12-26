#!/bin/bash

# check if the current user is root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# update package manager cache
pacman -Sy

# install Bluetooth drivers
pacman -S bluez bluez-utils

# load the Bluetooth module
modprobe btusb

echo "Completed installing Bluetooth drivers"
