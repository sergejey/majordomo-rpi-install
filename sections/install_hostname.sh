#!/bin/bash

showMessage "Installing DNS record"

runSudo "apt-get install avahi-daemon"
runSudo "systemctl enable avahi-daemon.service"
runSudo "systemctl start avahi-daemon.service"

replaceString "/etc/hostname" "raspberrypi" "$dns_hostname"
replaceString "/etc/hosts" "raspberrypi" "$dns_hostname"

showMessage "DNS record installed."