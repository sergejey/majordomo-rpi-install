#!/bin/bash

showMessage "Installing Homebridge service..."

# do not pull Debian's nodejs/npm on top of a NodeSource install
if ! command -v node >/dev/null 2>&1; then
  source "./sections/install_nodejs.sh"
fi
runSudo "apt-get install -y libavahi-compat-libdnssd-dev"
runSudo "npm install -g homebridge"
runSudo "npm install -g homebridge-mqtt"
runSudo "npm install -g homebridge-camera-ffmpeg"

mkdir -p ~/.homebridge
cp ./resources/homebridge_config.json ~/.homebridge/config.json

runSudo "cp ./resources/homebridge_service.sh /etc/init.d/homebridge"
runSudo "sed -i 's|^dir=\"/home/pi\"|dir=\"$HOME\"|; s|^user=\"pi\"|user=\"$pi_username\"|' /etc/init.d/homebridge"
runSudo "chmod 0755 /etc/init.d/homebridge"
runSudo "update-rc.d homebridge defaults"
runSudo "service homebridge start"

#todo: logrotate config https://github.com/homebridge/homebridge/issues/1117#issuecomment-277577013
# Log rotate
runSudo "cp ./resources/logrotate_homebridge /etc/logrotate.d/homebridge"

installModule "homekit"

showMessage "Homebridge installed."