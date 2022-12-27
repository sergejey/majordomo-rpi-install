#!/bin/sh

showMessage "Installing Homebridge service..."

runSudo "apt-get install -y nodejs npm"
runSudo "apt-get install -y libavahi-compat-libdnssd-dev"
runSudo "npm -g i homebridge --unsafe-perm"
runSudo "npm install -g homebridge-mqtt"
runSudo "npm install homebridge-camera-ffmpeg"

mkdir ~/.homebridge/>>$LOG_FILE
cp ./resources/homebridge_config.json ~/.homebridge/config.json>>$LOG_FILE

runSudo "cp ./resources/homebridge_service.sh /etc/init.d/homebridge"
runSudo "chmod 0755 /etc/init.d/homebridge"
runSudo "update-rc.d homebridge defaults"
runSudo "service homebridge start"

#todo: logrotate config https://github.com/homebridge/homebridge/issues/1117#issuecomment-277577013

showMessage "Homebridge installed."