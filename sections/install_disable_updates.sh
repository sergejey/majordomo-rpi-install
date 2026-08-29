#!/bin/bash

showMessage "Disabling daily updates..."
for u in apt-daily.timer apt-daily-upgrade.timer; do
  sudo systemctl stop "$u"
  sudo systemctl disable "$u"
  sudo systemctl mask "$u"
done
sudo systemctl disable --now unattended-upgrades.service 2>/dev/null
sudo systemctl daemon-reload
showMessage "Done"