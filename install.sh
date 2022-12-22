#!/bin/sh

cd ~
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
git clone https://github.com/sergejey/majordomo-rpi-install.git
cd majordomo-rpi-install

my_dir="$(dirname "$0")"
bash "$my_dir/libraries/general.sh"

helloWorld