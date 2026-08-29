#!/bin/bash

showMessage "Installing Zigbee2MQTT..."
runSudo "apt-get install -y make"
runSudo "apt-get install -y g++"
runSudo "apt-get install -y gcc"
runSudo "apt-get install -y libsystemd-dev"

# pnpm version is pinned by z2m via package.json "packageManager"
runSudo "corepack enable"

runSudo "rm -Rf /opt/zigbee2mqtt"
runSudo "git clone --depth 1 https://github.com/Koenkk/zigbee2mqtt.git /opt/zigbee2mqtt"
runSudo "chown -R $pi_username:$pi_username /opt/zigbee2mqtt"

cd /opt/zigbee2mqtt/ || exit 1
sudo -u "$pi_username" -H bash -lc "cd /opt/zigbee2mqtt && corepack pnpm i --frozen-lockfile" >>"$LOG_FILE" 2>&1
sudo -u "$pi_username" -H bash -lc "cd /opt/zigbee2mqtt && corepack pnpm run build" >>"$LOG_FILE" 2>&1

cd "$destPath/majordomo-rpi-install" || exit 1

replaceStringForce "/opt/zigbee2mqtt/data/configuration.example.yaml" "enabled: false" "enabled: true"
cp /opt/zigbee2mqtt/data/configuration.example.yaml /opt/zigbee2mqtt/data/configuration.yaml

cd "$destPath/majordomo-rpi-install" || exit 1

runSudo "chown -R $pi_username:$pi_username /opt/zigbee2mqtt"
runSudo "chmod -R o-w /opt/zigbee2mqtt"
runSudo "cp ./resources/zigbee2mqtt.service /etc/systemd/system/zigbee2mqtt.service"
runSudo "sed -i 's/^User=pi$/User=$pi_username/' /etc/systemd/system/zigbee2mqtt.service"
runSudo "usermod -aG dialout $pi_username"
runSudo "systemctl daemon-reload"
runSudo "systemctl enable zigbee2mqtt.service"
runSudo "service zigbee2mqtt start"

showMessage "Zigbee2MQTT installed."