# majordomo-rpi-install

Installation script to setup __MajorDoMo__ home automation platform on __Rasbperry Pi OS (bullseye)__.

Usage:
```
curl -s https://raw.githubusercontent.com/sergejey/majordomo-rpi-install/main/install.sh | bash && bash ~/majordomo-rpi-install/install.sh
```
Features:
* Basic preparations
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

To-Do:
* Option to use nginx instead of apache
* ZWave2MQTT
* KNX2MQTT
* any other ideas? :)

Big thanks to **prmres** for [original idea](https://mjdm.ru/forum/viewtopic.php?p=92843#p92843)!