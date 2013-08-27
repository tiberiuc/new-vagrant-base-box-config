#!/bin/bash

sudo apt-get clean
sudo gem cleanup
rm -r "$(gem env gemdir)"/doc/*
