new vagrant base box config
===========================

Scripts to configure a new Ubuntu to be used with Vagrant as base box

### Run ###

  ```
  curl https://raw.github.com/tiberiuc/new_vagrant_base_box_config/master/install.sh | sh
  ```

### DON'T FORGET ###

  Before creating the box compact you virtual HDD with 
  
  ```
  VBoxManage modifyvdi _path_to_vdi_file_ compact
  ```
