#!/bin/bash

showMessage "Disabling daily updates..."
sudo systemctl stop apt-daily.timer
sudo systemctl disable apt-daily.timer
sudo systemctl disable apt-daily.service
sudo systemctl daemon-reload
showMessage "Done"