#!/bin/bash

showMessage "Downloading backup..."
wget -O ./resources/$backup_code.tgz https://connect.smartliving.ru/download_backup.php?code=$backup_code\&username=$backup_username
mkdir ./resources/$backup_code
tar xzvf ./resources/$backup_code.tgz -C ./resources/$backup_code
rm ./resources/$backup_code.tgz

if [[ -f ./resources/$backup_code/dump.sql ]]; then
  mv ./resources/$backup_code/dump.sql ./resources/initial_db.sql
  showMessage "Backup downloaded."
else
  showMessage "Backup download failed!"
fi