#!/bin/bash

showMessage "Post-install sequence."
runSudo "find /tmp/ -type f -exec chmod 0666 {} \;"
runSudo "find /tmp/ -type d -exec chmod 0777 {} \;"

