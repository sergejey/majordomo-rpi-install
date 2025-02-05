#!/bin/bash

showMessage "Installing NodeJS..."

curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash -
runSudo "apt-get install -y nodejs"
runSudo "apt-get install -y npm"
node -v
showMessage "NodeJS installed."