#!/bin/bash

SCRIPT_NAME="date_details"
SCRIPT_DESCRIPTION="Details of the date and time zone of the computer."
SCRIPT_DESCRIPTION_ES="Detalles de la fecha y zona horaria del ordenador."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://linuxize.com/post/how-to-set-or-change-timezone-in-linux/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# details
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_S" == true ]; then
    DATA=$(timedatectl)
    echo "Local time: $(echo "$DATA" | grep "Local time" | awk '{print $4, $5, $6, $7, $8}')"
    echo "Universal time: $(echo "$DATA" | grep "Universal time" | awk '{print $4, $5, $6, $7, $8}')"
    echo "RTC time: $(echo "$DATA" | grep "RTC time" | awk '{print $4, $5, $6, $7, $8}')"
    echo "Time zone: $(echo "$DATA" | grep "Time zone" | awk '{print $3, $4, $5, $6}')"
    echo "System clock synchronized: $(echo "$DATA" | grep "System clock synchronized" | awk '{print $4}')"
    echo "NTP service: $(echo "$DATA" | grep "NTP service" | awk '{print $3}')"
    echo "RTC in local TZ: $(echo "$DATA" | grep "RTC in local TZ" | awk '{print $5}')"
  else
    timedatectl
  fi
fi
