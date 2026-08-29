#!/bin/bash

showMessage "Installing DNS record"

runSudo "apt-get install -y avahi-daemon"
runSudo "systemctl enable avahi-daemon.service"
runSudo "systemctl start avahi-daemon.service"

# /etc/hosts still points at the old name, so replace it before the rename
OLD_HOSTNAME=$(hostname)
if [ -n "$OLD_HOSTNAME" ] && [ "$OLD_HOSTNAME" != "$dns_hostname" ]; then
  replaceStringForce "/etc/hosts" "$OLD_HOSTNAME" "$dns_hostname"
fi

runSudo "hostnamectl set-hostname $dns_hostname"

showMessage "DNS record installed ($dns_hostname.local)."
