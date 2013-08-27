#!/bin/bash

if [ -z "$1" ]; then
	echo "Starting up visudo with this script as first parameter"
	export EDITOR=$0 && sudo -E visudo
else
	echo "Changing sudoers"
	sed -i /^%admin/d $1
	echo "%admin ALL=(ALL) NOPASSWD: ALL" >> $1
	echo "Defaults	env_keep=\"SSH_AUTH_SOCK\"" >> $1
fi
