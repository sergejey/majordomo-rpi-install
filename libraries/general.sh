#!/bin/bash

osVersion=$(cat /etc/issue.net)
if [ -d /boot/firmware ]; then
  BOOT_PATH="/boot/firmware"
else
  BOOT_PATH="/boot"
fi
if [ -f /proc/device-tree/model ]; then
  PI_MODEL=$(tr -d '\0' < /proc/device-tree/model)
else
  PI_MODEL=""
fi
echo "OS: $osVersion" >> $LOG_FILE

function checkOS {
 if [[ "$osVersion" == *"$1"* ]]; then
   return 0
 else
  return 1
 fi
}

function showMessage {
  echo "$1"
  echo "" >> $LOG_FILE
  echo "$1" >> $LOG_FILE
  echo "" >> $LOG_FILE
}

function appendAsRoot {
  #$1 - text, $2 - file
  showMessage "Appending to $2: $1"
  echo "$1" | sudo tee -a "$2" >>"$LOG_FILE"
}

function writeAsRoot {
  #$1 - text, $2 - file
  showMessage "Writing to $2"
  echo "$1" | sudo tee "$2" >>"$LOG_FILE"
}

function isVM {
 if lspci | grep -q "VirtualBox"; then
  return 0
 else
  return 1
 fi
}

function majordomoWebCall {
  #$1 - url
  wget -q -O- "$1" 2>>"$LOG_FILE" \
    | sed -e 's/<script[^>]*>[^<]*<\/script>//g' -e 's/<[^>]*>/ /g' -e 's/&nbsp;/ /g' \
    | tr -s '[:space:]' ' ' | cut -c1-1000 >>"$LOG_FILE"
  echo >>"$LOG_FILE"
}

function installModule {
  showMessage "Installing module $1"
  majordomoWebCall "http://localhost/modules/market/update_iframe.php?mode2=install&name=$1"
}

function runSudoNoLog {
  showMessage "Running: $1"
  sudo sh -c "$1"
}

function runSudoSecret {
  #$1 - command, $2 - description for the log
  showMessage "Running: ${2:-<hidden command>}"
  sudo sh -c "$1" 2>>"$LOG_FILE"
}

function runSudo {
  showMessage "Running: $1"
  sudo sh -c "$1 >>$LOG_FILE 2>&1"
}

function replaceString {
  #$1 - filename
  #$2 - find string
  #$3 - replace with
  showMessage "Replacing '$2' with '$3' in file $1..."
  if [[ -f $1 && $3 != "" && $2 != "" ]]; then
    if  ! grep -q "$2" "$1" ; then
      showMessage "Ignoring ('$2' not found in file $1)."
    else
      if  grep -q "$3" "$1" ; then
       showMessage "Ignoring ('$3' already found in file $1)."
      else
       findString="$2"
       replaceString="$3"
       runSudo "sed -i 's/$findString/$replaceString/' $1"
      fi
    fi
  else
    showMessage "Replace error (incorrect parameters: '$1' '$2' '$3')."
  fi
}

function replaceStringForce {
  #$1 - filename
  #$2 - find string
  #$3 - replace with
  showMessage "Replacing '$2' with '$3' in file $1..."
  if [[ -f $1 && $3 != "" && $2 != "" ]]; then
    if  ! grep -q "$2" "$1" ; then
      showMessage "Ignoring ('$2' not found in file $1)."
    else
      findString="$2"
      replaceString="$3"
      runSudo "sed -i 's/$findString/$replaceString/' $1"
    fi
  else
    showMessage "Replace error (incorrect parameters: '$1' '$2' '$3')."
  fi
}