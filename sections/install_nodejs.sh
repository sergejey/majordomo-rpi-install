#!/bin/bash

showMessage "Installing NodeJS..."

# Zigbee2MQTT 2.x requires Node ^22.2 || ^24 || ^26; Node 20 is EOL (Apr 2026)
curl -fsSL https://deb.nodesource.com/setup_24.x | sudo -E bash -
runSudo "apt-get install -y nodejs"
runSudo "corepack enable"
node -v
npm -v
showMessage "NodeJS installed."