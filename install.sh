#!/bin/bash

cd /tmp

curl -o 1.sh https://raw.github.com/tiberiuc/new_vagrant_base_box_config/master/1.change_sudoers.sh
curl -o 2.sh https://raw.github.com/tiberiuc/new_vagrant_base_box_config/master/2.change_rights_and_root_passwd.sh
curl -o 3.sh https://raw.github.com/tiberiuc/new_vagrant_base_box_config/master/3.install_guest_additions.sh
curl -o 4.sh https://raw.github.com/tiberiuc/new_vagrant_base_box_config/master/4.set_ssh_access.sh
curl -o 5.sh https://raw.github.com/tiberiuc/new_vagrant_base_box_config/master/5.install_software.sh
curl -o 6.sh https://raw.github.com/tiberiuc/new_vagrant_base_box_config/master/6.cleanup.sh

chmod +x *.sh

./1.sh
./2.sh
./3.sh
./4.sh
./5.sh
./6.sh

