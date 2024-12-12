#!/bin/bash

if isVM; then
  showMessage "Running clock sync for VM."
  sudo hwclock --hctosys
fi

sudo apt-get -y remove needrestart

showMessage "Updating OS."

runSudo "apt-get update"
runSudo "apt-get upgrade -y"

runSudo "apt-get install -y mc mpd mplayer unzip ntp python3 python3-pip pkg-config ffmpeg"
runSudo "python3 -m pip config set global.break-system-packages true"
runSudo "pip install mysqlclient"
runSudo "pip install timer"
runSudo "systemctl enable ssh"
runSudo "systemctl start ssh"
runSudo "service ntp restart"

#todo gethostname (hostname -i)
