#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade

sudo apt-get -y install linux-headers-$(uname -r) build-essential
echo "Go to Menu > Devices > Install Guest Additions"
echo "and press ENTER to continue when you are done"
read -e -n1 a < /dev/tty
sudo mount /dev/cdrom /media/cdrom
sudo sh /media/cdrom/VBoxLinuxAdditions.run
sudo umount /dev/cdrom
sudo eject /dev/cdrom
