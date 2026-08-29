#!/bin/bash

# https://ab-log.ru/forum/viewtopic.php?f=1&t=1895
showMessage "Making changes related to AB-LOG RPi4POE module"

case "$PI_MODEL" in
  *"Raspberry Pi 5"*)
    showMessage "WARNING: this block is written for RPi4 (ab-log RPi4-RTC-PoE)."
    showMessage "Overwriting config.txt on a Raspberry Pi 5 can make it unbootable - skipping."
    return 0
    ;;
esac

showMessage "Using boot path: $BOOT_PATH"

# cmdline.txt
if [ -f "$BOOT_PATH/cmdline.txt" ]; then
  sudo sed -i 's/console=serial0,115200 //' "$BOOT_PATH/cmdline.txt"
else
  showMessage "WARNING: $BOOT_PATH/cmdline.txt not found."
fi

if [ -f "$BOOT_PATH/config.txt" ]; then
  sudo cp "$BOOT_PATH/config.txt" "$BOOT_PATH/config.txt.majordomo-backup"
  while IFS= read -r line; do
    [ -z "$line" ] && continue
    case "$line" in \[*) continue ;; esac
    if ! grep -qxF "$line" "$BOOT_PATH/config.txt"; then
      appendAsRoot "$line" "$BOOT_PATH/config.txt"
    fi
  done < ./resources/boot_config.txt
else
  showMessage "WARNING: $BOOT_PATH/config.txt not found."
fi

# clock
sudo systemctl disable hciuart
sudo apt-get purge -y fake-hwclock
sudo sed -i "/^i2c-dev/d" /etc/modules
appendAsRoot "i2c-dev" "/etc/modules"

showMessage "All done"
