#!/bin/bash

cd /tmp

SCRIPTS_URL="https://raw.github.com/tiberiuc/new-vagrant-base-box-config/master/"

curl -o 1.sh ${SCRIPTS_URL}/1.change_sudoers.sh
curl -o 2.sh ${SCRIPTS_URL}/2.change_rights_and_root_passwd.sh
curl -o 3.sh ${SCRIPTS_URL}/3.install_guest_additions.sh
curl -o 4.sh ${SCRIPTS_URL}/4.set_ssh_access.sh
curl -o 5.sh ${SCRIPTS_URL}/5.install_software.sh
curl -o 6.sh ${SCRIPTS_URL}/6.cleanup.sh

chmod +x *.sh

./1.sh
./2.sh
./3.sh
./4.sh
./5.sh
./6.sh

