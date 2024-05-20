#!/bin/bash

showMessage "Installing RHVoice speech engine..."

runSudo "apt-get install -y mplayer"
runSudo "apt-get install -y alsa-base"
runSudo "apt-get install -y alsa-utils"
runSudo "apt-get install -y alsa-tools"
runSudo "apt-get install -y libao4"
runSudo "apt-get install -y libao-common"
runSudo "apt-get install -y libao-dev"
runSudo "apt-get install -y pulseaudio"

runSudo "usermod -a -G audio www-data"

runSudo "apt-get install -y gcc"
runSudo "apt-get install -y g++"
runSudo "apt-get install -y pkg-config"
runSudo "apt-get install -y scons"
runSudo "apt-get install -y python-lxml"
runSudo "apt-get install -y python3-lxml"
runSudo "apt-get install -y libpulse-dev"
runSudo "apt-get install -y portaudio19-dev"
runSudo "apt-get install -y speech-dispatcher"
runSudo "apt-get install -y libspeechd-dev"

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
runSudo "scons"
runSudo "scons install"
runSudo "ldconfig"
cd ../
rm -Rf RHVoice/

installModule "rhvoice"

showMessage "RHVoice installation complete."