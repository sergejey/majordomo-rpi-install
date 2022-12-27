# majordomo-rpi-install

Installation script to setup __MajorDoMo__ home automation platform on __Rasbperry Pi OS (bullseye)__.

Usage:
```
curl -s https://raw.githubusercontent.com/sergejey/majordomo-rpi-install/main/install.sh | bash
```
Features:
* Basic preparations
* Install Apache web server
* Install MariaDB (password config)
* Install phpMyAdmin  
* Install __MajorDomo__ (master or alpha branch)
* Install Mosquitto MQTT broker
* Install HomeBridge service (optional)
* Install RHVoice TTS engine (optional)
* Install Zigbee2MQTT service (optional)
* Install Redis for caching (optional)