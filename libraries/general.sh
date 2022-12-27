#!/bin/sh

LOG_FILE="./log.txt"

function showMessage {
  echo "$1"
  echo "" >> $LOG_FILE
  echo "$1" >> $LOG_FILE
  echo "" >> $LOG_FILE
}

function runSudo {
  showMessage "Running: $1"
  sudo sh -c "$1 >>$LOG_FILE"
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
       #findString="$(printf '%q' "$2")"
       findString="$2"
       #replaceString="$(printf '%q' "$3")"
       replaceString="$3"
       runSudo "sed -i 's/$findString/$replaceString/' $1"
      fi
    fi
  else
    showMessage "Replace error (incorrect parameters: '$1' '$2' '$3')."
  fi
}