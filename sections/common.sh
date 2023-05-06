#!/bin/sh

showMessage "Updating OS."
runSudo "apt-get update"
runSudo "apt-get upgrade -y"

runSudo "apt-get install -y mc mpd mplayer"
runSudo "systemctl enable ssh"
runSudo "systemctl start ssh"

ubnt=$(cat /etc/issue.net)
if [ echo $ubnt | grep -q -s -F "Ubuntu 22" ]; then
sudo apt install software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo apt update -y
fi

echo "\$nrconf{restart} = \"a\"" | sudo tee -a /etc/needrestart/needrestart.conf

#todo gethostname (hostname -i)
