#!/bin/bash

SCRIPT_NAME="ubuntu_crash_clean"
SCRIPT_DESCRIPTION="Clear Ubuntu error logs."
SCRIPT_DESCRIPTION_ES="Borrar registros de errores de Ubuntu."
SCRIPT_VERSION="24.05.05"
SCRIPT_SEE="https://askubuntu.com/questions/1160113/system-program-problem-detected"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT rm /var/crash/*
}

# clean
if [ "$ARG_BASH_I" != true ]; then
  if [ "$ARG_BASH_Q" == true ]; then
    echo -en "$TEXT_DANGER"
    CODE &>/dev/null
    echo -en "$TEXT_DEFAULT"
  else
    CODE
  fi
fi
