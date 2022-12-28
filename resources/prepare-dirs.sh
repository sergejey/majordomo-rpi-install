#!/bin/bash
#
### BEGIN INIT INFO
# Provides:          prepare-dirs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Required-Start:
# Required-Stop:
# Short-Description: Create needed directories on for tmpfs at startup
# Description:       Create needed directories on for tmpfs at startup
### END INIT INFO
# needed Dirs
DIR[0]=/tmp/mysql
case "${1:-''}" in
  start)
        typeset -i i=0 max=${#DIR[*]}
        while (( i < max ))
        do
                mkdir  ${DIR[$i]}
                chmod 777 ${DIR[$i]}
                i=i+1
        done
        # set rights
        #chown pi:pi ${DIR[0]}
        cp -R /var/lib/mysql/* /tmp/mysql/
        chown -Rf mysql:mysql /tmp/mysql/*
        chown mysql:mysql /tmp/mysql
    ;;
  stop)
    ;;
  restart)
   ;;
  reload|force-reload)
   ;;
  status)
   ;;
  *)
   echo "Usage: $SELF start"
   exit 1
   ;;
esac