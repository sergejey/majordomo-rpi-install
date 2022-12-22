#!/bin/sh

cd ~
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
rm -Rf ./majordomo-rpi-install
git clone https://github.com/sergejey/majordomo-rpi-install.git

cd majordomo-rpi-install

source "./libraries/general.sh"

helloWorld