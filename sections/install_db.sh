#!/bin/bash

showMessage "Installing MariaDB..."

for i in mariadb-server mariadb-common python3-dev default-libmysqlclient-dev build-essential mariadb-client dbconfig-mysql; do runSudo "apt-get install -y $i"; done

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