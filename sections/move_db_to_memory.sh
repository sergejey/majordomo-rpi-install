#!/bin/bash

# In-memory database to reduce SD-card writes.
MEM_DIR="/var/lib/mysql-mem"

showMessage "Moving DB to memory (${MEM_DIR}, ${memory_storage_size}M)..."

runSudo "service majordomo stop"
runSudo "systemctl stop mariadb"

# MariaDB settings
runSudoNoLog "cat >/etc/mysql/mariadb.conf.d/60-majordomo-memory.cnf <<'CNF'
[mysqld]
datadir                 = ${MEM_DIR}
default-storage-engine  = myisam
innodb_log_file_size    = 16M
CNF"

# tmpfs for the database
runSudo "mkdir -p $MEM_DIR"
if ! grep -q "$MEM_DIR" /etc/fstab; then
  appendAsRoot "tmpfs $MEM_DIR tmpfs defaults,noatime,nosuid,noexec,mode=0755,uid=mysql,gid=mysql,size=${memory_storage_size}m 0 0" /etc/fstab
fi
runSudo "systemctl daemon-reload"
runSudo "mount $MEM_DIR"

# Populate tmpfs before MariaDB starts, write it back on shutdown
runSudoNoLog "cat >/etc/systemd/system/majordomo-prepare-db.service <<'UNIT'
[Unit]
Description=MariaDB data in tmpfs for MajorDoMo (restore on boot, save on shutdown)
RequiresMountsFor=${MEM_DIR}
Before=mariadb.service
[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/bin/bash -c 'cp -a /var/lib/mysql/. ${MEM_DIR}/ && chown -R mysql:mysql ${MEM_DIR}'
# runs after mariadb.service has stopped (reverse of Before=), so the copy is consistent
ExecStop=/bin/bash -c 'if mountpoint -q ${MEM_DIR}; then cp -a ${MEM_DIR}/. /var/lib/mysql/ && chown -R mysql:mysql /var/lib/mysql; fi'
TimeoutStopSec=120
[Install]
WantedBy=multi-user.target
UNIT"
runSudo "systemctl daemon-reload"
runSudo "systemctl enable majordomo-prepare-db.service"
runSudo "systemctl start majordomo-prepare-db.service"

runSudo "systemctl start mariadb"

if ! systemctl is-active --quiet mariadb; then
  showMessage "ERROR: MariaDB did not start with datadir in ${MEM_DIR}."
  showMessage "Check: systemctl status mariadb / journalctl -u mariadb -n 50"
fi

# Prepare MajorDoMo periodical dump (this is what really survives a reboot:
# cycle.php restores database_backup/db.sql on every start)
runSudo "cp /var/www/html/scripts/periodical_db_save.php /var/www/html/scripts/cycle_periodical_db_save.php"

runSudo "mkdir -p /var/www/html/database_backup"
runSudo "chown www-data:www-data /var/www/html/database_backup"
runSudo "chmod 0770 /var/www/html/database_backup"

# password via a temporary defaults file: on the command line it would end up
# both in the log and in the process list
DUMP_CNF="/root/.majordomo-dump.cnf"
printf '[client]\nuser=root\npassword=%s\n' "$db_root" | sudo tee "$DUMP_CNF" >/dev/null
sudo chmod 600 "$DUMP_CNF"
runSudoSecret "/usr/bin/mysqldump --defaults-extra-file=$DUMP_CNF -h localhost --no-create-db --add-drop-table db_terminal>/var/www/html/database_backup/db.sql" "mysqldump db_terminal -> database_backup/db.sql"
sudo rm -f "$DUMP_CNF"

runSudo "chown www-data:www-data /var/www/html/database_backup/db.sql"
runSudo "chmod 0660 /var/www/html/database_backup/db.sql"

runSudo "service majordomo start"

showMessage "DB move complete."
