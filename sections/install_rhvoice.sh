#!/bin/sh

showMessage "Installing RHVoice speech engine..."

sudo apt-get install -y mplayer>>$LOG_FILE
sudo apt-get install -y alsa-base>>$LOG_FILE
sudo apt-get install -y alsa-utils>>$LOG_FILE
sudo apt-get install -y alsa-tools>>$LOG_FILE
sudo apt-get install -y libao4>>$LOG_FILE
sudo apt-get install -y libao-common>>$LOG_FILE
sudo apt-get install -y libao-dev>>$LOG_FILE
sudo apt-get install -y pulseaudio>>$LOG_FILE

sudo usermod -a -G audio www-data>>$LOG_FILE

sudo apt-get install -y gcc>>$LOG_FILE
sudo apt-get install -y g++>>$LOG_FILE
sudo apt-get install -y pkg-config>>$LOG_FILE
sudo apt-get install -y scons>>$LOG_FILE
sudo apt-get install -y python-lxml>>$LOG_FILE
sudo apt-get install -y libpulse-dev>>$LOG_FILE
sudo apt-get install -y portaudio19-dev>>$LOG_FILE
sudo apt-get install -y speech-dispatcher>>$LOG_FILE
sudo apt-get install -y libspeechd-dev>>$LOG_FILE

sudo tee -a /etc/pulse/daemon.conf << EOF
high-priority = no
nice-level = -1
realtime-scheduling = yes
realtime-priority = 5
flat-volumes = no
resample-method = speex-float-1
default-sample-rate = 48000
default-fragments = 4
default-fragment-size-msec = 25
EOF

git clone --recurse-submodules https://github.com/RHVoice/RHVoice.git
cd RHVoice
sudo scons
sudo scons install
sudo ldconfig
cd ../
rm -Rf RHVoice/

#todo: install rhvoice module for majordomo

showMessage "RHVoice installation complete."