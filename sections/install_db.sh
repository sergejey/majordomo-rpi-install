#!/bin/bash

showMessage "Installing MariaDB..."

runSudo "apt-get install -y mariadb-server"
runSudo "apt-get install -y mariadb-common"
runSudo "apt-get install -y python3-dev default-libmysqlclient-dev build-essential"
runSudo "apt-get install -y mariadb-client"
runSudo "apt-get install -y dbconfig-mysql"

showMessage "MariaDB installed."

#Setting root password
showMessage "Updating DB root password..."
sudo mysql -u root << EOF
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_root';
flush privileges;
EOF
runSudo "systemctl restart mariadb"
showMessage "Root password set to: $db_root"