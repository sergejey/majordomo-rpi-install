#!/bin/bash

sudo apt-get -y remove needrestart

showMessage "Updating OS."

runSudo "apt-get update"
runSudo "apt-get upgrade -y"

runSudo "apt-get install -y mc mpd mplayer unzip ntp"
runSudo "systemctl enable ssh"
runSudo "systemctl start ssh"
runSudo "service ntp restart"

#todo gethostname (hostname -i)
