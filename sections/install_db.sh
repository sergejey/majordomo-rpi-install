#!/bin/sh

showMessage "Installing MariaDB..."

sudo apt-get install -y dbconfig-mysql>>$LOG_FILE
sudo apt-get install -y mariadb-common>>$LOG_FILE
sudo apt-get install -y mariadb-client>>$LOG_FILE
sudo apt-get install -y mariadb-server>>$LOG_FILE

showMessage "MariaDB installed."

#Setting root password
showMessage "Updating DB root password..."
sudo mysql -u root << EOF
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_root';
flush privileges;
EOF
sudo systemctl restart mariadb

showMessage "Root password set to: $db_root"