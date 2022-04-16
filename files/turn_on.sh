#!/bin/bash
[[ ! -f /tmp/dawn ]] && /home/app/get_dawn.sh
SUNSET=$(cat /tmp/dawn)
DATE=$(date +%H%M)

[[ ${SUNSET} == ${DATE} ]] && /usr/bin/yeecli --ip ${DEVICE} -e smooth -d 5000 turn on && /usr/bin/yeecli --ip ${DEVICE} -e smooth -d 5000 temperature 3800 && /usr/bin/yeecli --ip ${DEVICE} -e smooth -d 5000 brightness 100
