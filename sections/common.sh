#!/bin/sh

showMessage "Updating OS."
sudo apt-get update>>$LOG_FILE
sudo apt-get upgrade -y>>$LOG_FILE

sudo apt-get install -y mc>>$LOG_FILE
sudo systemctl enable ssh>>$LOG_FILE
sudo systemctl start ssh>>$LOG_FILE

#todo gethostname (hostname -i)
