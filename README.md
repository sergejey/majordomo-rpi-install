# majordomo-rpi-install

Installation script to setup __MajorDoMo__ home automation platform on __Rasbperry Pi OS (bullseye)__.

Prerequisites
* Raspbian OS image should be installed
* SSH enabled (in case of headless setup see instructions below)

Usage:
```
curl -s https://raw.githubusercontent.com/sergejey/majordomo-rpi-install/main/install.sh | bash && bash ~/majordomo-rpi-install/install.sh
```

Sample run:

![image](https://user-images.githubusercontent.com/412987/234350604-646cfc11-2799-43f8-abe8-3104c9a79716.png)

Features:
* Basic preparations (distr update)
* Static IP address set (optional)
* Special block for [ab-log's RPi4-RTC-PoE](https://ab-log.ru/forum/viewtopic.php?f=1&t=1895) mini-server setup (optional)  
* Install Apache web server
* Install MariaDB (password config)
* Install phpMyAdmin  
* Install __MajorDomo__ (master or alpha branch)
* In-memory database option to reduce writing to SD-card
* Install Mosquitto MQTT broker
* Install HomeBridge service (optional)
* Install RHVoice TTS engine (optional)
* Install Zigbee2MQTT service (optional)
* Install Redis for caching (optional)

Post-installation:
* Reboot the system (recommended)
* MajorDoMo is available by the url ``http://IP_address/`` (open it to finish setup)
* Zigbee2MQTT front-end is available by the url ``http://IP_address:8080/`` (if installed)

To-Do:
* Option to use nginx instead of apache
* ZWave2MQTT
* KNX2MQTT
* any other ideas? :)

Big thanks to **prmres** for [original idea](https://mjdm.ru/forum/viewtopic.php?p=92843#p92843)!

## Headless setup

1. Download latest [Raspian Lite](https://downloads.raspberrypi.org/raspios_lite_armhf/images/) image
2. Burn image to SSD card (or eMMC disk) with [Balena Etcher](https://www.balena.io/etcher/) or [Win32DiskImager](https://sourceforge.net/projects/win32diskimager/)
3. Create empty file called _ssh_ in the root of boot disk
4. Create _userconf.txt_ file in the same folder with following content:
>pi:$6$ghKLjE2C3qTJZtde$AjJ9HXBpawoN/iqCTU8KBtaOngUx5GLY0qkEJP0F7VKTLL5fkX7q9K4oSiZYVFJBc09NocagToQzbnNz/eph71
5. Reboot Raspberry Pi and connect to it using SSH protocol and following username/password:  
   _pi_ / _raspberry_