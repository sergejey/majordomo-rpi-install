#!/bin/bash

destPath=~
devRun=n

LOG_FILE="$HOME/majordomo-rpi-install/log.txt"

cd $destPath || exit

sudo apt-get install -y git

case "$(basename -- "$0")" in
  bash|sh|dash|-bash)
    if [ "$devRun" != "y" ]; then
      rm -Rf ./majordomo-rpi-install
      git clone https://github.com/sergejey/majordomo-rpi-install.git
    fi
    echo "Bootstrap finished. Now run: bash ~/majordomo-rpi-install/install.sh"
    exit 0
    ;;
esac

cd "$destPath/majordomo-rpi-install" || exit 1
clear

echo "Welcome to MajorDoMo installation script for Raspberry Pi!"
echo "More details at https://github.com/sergejey/majordomo-rpi-install"
echo ""
read -p "Ok, are you ready to start? [y]: " startReady
startReady=${startReady:-y}
if [ "$startReady" != "y" ]; then
 exit
fi


source "./libraries/general.sh"

# Remove old log file if exists
if [ -f $LOG_FILE ]; then
  rm $LOG_FILE
fi

IP_ADDRESS=$(hostname -I | awk '{print $1}')

showMessage "Starting installation script."

# Ask for details
source "./sections/questions.sh"

# Common preparation
source "./sections/common.sh"

# Stop background apt jobs
for u in apt-daily.timer apt-daily-upgrade.timer unattended-upgrades.service; do
  if systemctl cat "$u" >/dev/null 2>&1; then
    runSudo "systemctl stop $u"
  else
    showMessage "Skipping $u (not installed)"
  fi
done
for u in apt-daily.service apt-daily-upgrade.service; do
  if systemctl cat "$u" >/dev/null 2>&1; then
    runSudo "systemctl kill --kill-who=all $u"
  fi
done

if [ "$set_install_ablog" = "y" ]; then
  source "./sections/install_ablog_rpi4.sh"
fi

if [ "$set_static_ip" = "y" ]; then
 source "./sections/install_static_ip.sh"
fi
if [ "$set_disable_updates" = "y" ]; then
 source "./sections/install_disable_updates.sh"
fi
source "./sections/install_apache.sh"
source "./sections/install_php.sh"
source "./sections/install_db.sh"
source "./sections/install_phpmyadmin.sh"
if [ "$backup_restore" = "y" ]; then
 source "./sections/install_backup.sh"
fi
source "./sections/install_majordomo.sh"
if [ "$db_to_memory" = "y" ]; then
  source "./sections/move_db_to_memory.sh"
fi
source "./sections/install_mosquitto.sh"
if [ "$install_rhvoice" = "y" ]; then
 source "./sections/install_rhvoice.sh"
fi
if [ "$install_redis" = "y" ]; then
 source "./sections/install_redis.sh"
fi
if [ "$install_z2m" = "y" ]; then
 source "./sections/install_nodejs.sh"
 source "./sections/install_zigbee2mqtt.sh"
fi
if [ "$install_homebridge" = "y" ]; then
 source "./sections/install_homebridge.sh"
fi
#todo
#if [ "$install_zwave2mqtt" = "y" ]; then
# source "./sections/install_zwave2mqtt.sh"
#fi
#if [ "$install_knx2mqtt" = "y" ]; then
# source "./sections/install_knx2mqtt.sh"
#fi

if checkOS "Ubuntu"; then
  showMessage "Skipping hostname update."
else
 source "./sections/install_hostname.sh"
fi

source "./sections/post_install.sh"

showMessage "Installation complete."
showMessage "Log file for details: $LOG_FILE"
showMessage "Open web-site: http://$IP_ADDRESS/ or http://$dns_hostname.local"

read -p "Do you want to reboot (y/n) [n]: " rebootnow
rebootnow=${rebootnow:-n}

if [ "$rebootnow" = "y" ]; then
 runSudo "shutdown -r now"
fi
