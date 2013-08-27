#!/bin/bash

sudo apt-get autoremove
sudo apt-get clean
sudo gem cleanup
rm -r "$(gem env gemdir)"/doc/*
cd /tmp
dd if=/dev/zero of=zero.small.file bs=1024 count=102400
cat /dev/zero > zero.file
rm zero.small.file
rm zero.file
