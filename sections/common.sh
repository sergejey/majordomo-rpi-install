#!/bin/sh

showMessage "Updating OS."
sudo apt-get update>>$LOG_FILE
sudo apt-get upgrade -y>>$LOG_FILE

