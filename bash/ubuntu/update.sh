#!/bin/bash

SCRIPT_NAME="ubuntu_update"
SCRIPT_DESCRIPTION="Updating and cleaning the Ubuntu Operating System."
SCRIPT_DESCRIPTION_ES="Actualización y limpieza del Sistema Operativo Ubuntu."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://askubuntu.com/questions/196768/how-to-install-updates-via-command-line"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt-get update
  $IS_ROOT apt-get upgrade -y
  $IS_ROOT apt-get autoremove -y
  $IS_ROOT apt-get autoclean -y
}

# update
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_Q" == true ]; then
    CODE &>/dev/null
  else
    CODE
  fi
fi
