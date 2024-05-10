#!/bin/bash

SCRIPT_NAME="ubuntu_crash_clean"
SCRIPT_DESCRIPTION="Clear Ubuntu error logs."
SCRIPT_DESCRIPTION_ES="Borrar registros de errores de Ubuntu."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://askubuntu.com/questions/1160113/system-program-problem-detected"

# tools
. "$(dirname "$0")/../../bash-utilities.sh"

# clean
if [ "$ARG_BASH_H" != true ]; then
  $IS_ROOT rm /var/crash/*
fi
