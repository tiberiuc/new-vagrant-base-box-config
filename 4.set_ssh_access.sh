#!/bin/bash

mkdir -p ~/.ssh
curl -o ~/.ssh/authorized_keys https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub 
sudo sed -i /^UseDNS/d /etc/ssh/sshd_config
sudo bash -c "echo 'UseDNS no' >> /etc/ssh/sshd_config"

