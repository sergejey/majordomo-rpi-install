#!/bin/sh

showMessage "Updating OS."
runSudo "apt-get update"
runSudo "apt-get upgrade -y"

runSudo "apt-get install -y mc mpd mplayer"
runSudo "systemctl enable ssh"
runSudo "systemctl start ssh"

#todo gethostname (hostname -i)
