#!/bin/bash

showMessage "Installing MariaDB..."

for i in mariadb-server mariadb-common python3-dev default-libmysqlclient-dev build-essential mariadb-client dbconfig-mysql; do runSudo "apt-get install -y $i"; done

runSudo "apt-get install -y python3-pymysql python3-mysqldb"
showMessage "MariaDB installed."

#Setting root password
showMessage "Updating DB root password..."
sudo mysql -u root >>"$LOG_FILE" 2>&1 << EOF
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED VIA unix_socket OR mysql_native_password USING PASSWORD('$db_root');
flush privileges;
EOF
runSudo "systemctl restart mariadb"

# verify instead of just claiming success (and do not write the password to the log)
if mysql -u root --password="$db_root" -e "SELECT 1" >/dev/null 2>>"$LOG_FILE"; then
  showMessage "Root password set (value not written to the log)."
else
  showMessage "ERROR: cannot log in to MariaDB with the new root password!"
fi