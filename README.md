new vagrant base box config
===========================

Scripts to configure a new Ubuntu to be used with Vagrant as base box

### Run ###

  ```
  curl https://raw.github.com/tiberiuc/new-vagrant-base-box-config/master/install.sh | sh
  ```

### DON'T FORGET ###

  Before creating the box compact you virtual HDD with 
  
  ```
  VBoxManage modifyvdi _path_to_vdi_file_ compact
  ```

### Creating a new box and a new machine ###

  ```
  #!/bin/bash
  
  echo "Get VagrantFile from github"
  curl -o VagrantFile https://raw.github.com/tiberiuc/new-vagrant-base-box-config/master/vagrant-files/VagrantFile

  echo "Remove existing package"
  rm -rf package.box
  
  echo "Remove existing test box"
  vagrant box remove testBox
  
  echo "Create a new package"
  vagrant package --base UbuntuRaring --vagrantfile ./VagrantFile
  
  echo "Add new testBox from package"
  vagrant box add testBox package.box
  
  echo "Remove existing test instance"
  rm -rf test
  mkdir -p test
  cd test
  
  echo "Init a new test instance"
  vagrant init testBox
  
  echo "Starting up"
  vagrant up
  
  echo "Connecting to ssh"
  vagrant ssh

  ```
