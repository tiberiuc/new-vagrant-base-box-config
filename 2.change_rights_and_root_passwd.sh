#!/bin/bash
sudo groupadd admin
sudo usermod -G admin vagrant
sudo /etc/init.d/sudo restart
sudo passwd <<EOF
vagrant
vagrant
EOF
