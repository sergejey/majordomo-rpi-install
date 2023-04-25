# majordomo-rpi-install

Installation script to setup __MajorDoMo__ home automation platform on __Rasbperry Pi OS (bullseye)__.

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

To-Do:
* Option to use nginx instead of apache
* ZWave2MQTT
* KNX2MQTT
* any other ideas? :)

Big thanks to **prmres** for [original idea](https://mjdm.ru/forum/viewtopic.php?p=92843#p92843)!
