#!/bin/bash

sudo apt-get update
sudo apt-get install -y python3.7-distutils

# Symlink to Python version 3, necessary for python pip installation
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
sudo update-alternatives --set python /usr/bin/python3.7
