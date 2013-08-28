#!/bin/bash

INSTALLED_FLAG_FILE=/home/vagrant/.installed

if [ ! -f ${INSTALLED_FLAG_FILE} ]; then

        echo "Installing packages"

        curl https://raw.github.com/tiberiuc/development-box-configuration/master/install.sh | sudo -u vagrant sh

        echo "Installing dot files"
        curl https://raw.github.com/tiberiuc/dot-files/master/install.sh | sudo -u vagrant sh

        sudo -u vagrant echo 'done' > ${INSTALLED_FLAG_FILE}

fi
