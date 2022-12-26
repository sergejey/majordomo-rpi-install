#!/bin/sh

LOG_FILE="./log.txt"

function showMessage {
  echo "$1"
  echo "" >> $LOG_FILE
  echo "$1" >> $LOG_FILE
  echo "" >> $LOG_FILE
}

function helloWorld {
               echo Hello!
}