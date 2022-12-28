#!/bin/sh

showMessage "Moving DB to memory..."

runSudo "service majordomo stop"
runSudo "service mysql stop"

if  ! grep -q "default-storage-engine" "/etc/mysql/mariadb.conf.d/50-server.cnf" ; then
 runSudoNoLog "echo \"default-storage-engine = myisam\">>/etc/mysql/mariadb.conf.d/50-server.cnf"
 runSudoNoLog "echo \"innodb_log_file_size=8M\">>/etc/mysql/mariadb.conf.d/50-server.cnf"
 runSudoNoLog "echo \"innodb_log_files_in_group=4\">>/etc/mysql/mariadb.conf.d/50-server.cnf"
fi
runSudo "rm /var/lib/mysql/ib_logfile0"


# Set temporary storage size in /etc/fstab
if  ! grep -q "tmpfs" "/etc/fstab" ; then
 runSudoNoLog "echo \"tmpfs /tmp tmpfs defaults,noatime,nosuid,size=${memory_storage_size}m 0 0\">>/etc/fstab"
 runSudo "mount -o remount,noexec /tmp"
fi

# Prepare temporary directory for DB
runSudo "cp ./resources/prepare-dirs.sh /etc/init.d/prepare-dirs"
runSudo "chmod 0755 /etc/init.d/prepare-dirs"
runSudo "update-rc.d prepare-dirs defaults"
runSudo "service prepare-dirs start"

# Update MariaDB settings
sudo sed -i "s/datadir                 = \/var\/lib\/mysql/datadir                 = \/tmp\/mysql/" /etc/mysql/mariadb.conf.d/50-server.cnf

replaceString "/etc/init.d/mariadb" "Required-Start:    \$remote_fs \$syslog" "Required-Start:    \$remote_fs \$syslog prepare-dirs"
runSudo "service mysql start"

# Prepare MajorDoMo
runSudo "cp /var/www/html/scripts/periodical_db_save.php /var/www/html/scripts/cycle_periodical_db_save.php"

runSudo "mkdir /var/www/html/database_backup"
runSudo "chmod 0777 /var/www/html/database_backup"
runSudo "chown www-data:www-data /var/www/html/database_backup"
runSudoNoLog "/usr/bin/mysqldump -h localhost --user=root --password=$db_root --no-create-db --add-drop-table db_terminal>/var/www/html/database_backup/db.sql"
runSudo "chown www-data:www-data /var/www/html/database_backup/db.sql"
runSudo "chmod 0666 /var/www/html/database_backup/db.sql"

runSudo "service majordomo start"

showMessage "DB move complete."