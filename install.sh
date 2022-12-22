#!/bin/sh

cd ~
sudo apt-get install git

my_dir="$(dirname "$0")"
"$my_dir/libraries/general.sh"

helloWorld