#!/bin/bash

SCRIPT_NAME="ubuntu_laptop_switch-ignore"
SCRIPT_DESCRIPTION="Configure Ubuntu to prevent it from going to sleep when you close the lid."
SCRIPT_DESCRIPTION_ES="Configura Ubuntu para evitar que entre en modo de suspensión cuando cierre la tapa."
SCRIPT_VERSION="24.05.05"
SCRIPT_SEE="https://askubuntu.com/questions/1048063/ubuntu-server-how-do-disable-sleep-when-laptop-screen-is-closed-but-allow-scre"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT cp /etc/systemd/logind.conf /etc/systemd/logind.conf.old
  $IS_ROOT sed -i 's/#HandleLidSwitch=suspend/HandleLidSwitch=ignore/g' /etc/systemd/logind.conf
}

# do not sleep
if [ "$ARG_BASH_I" != true ]; then
  if [ "$ARG_BASH_Q" == true ]; then
    echo -en "$TEXT_DANGER"
    CODE &>/dev/null
    echo -en "$TEXT_DEFAULT"
  else
    CODE
  fi
fi
