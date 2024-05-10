#!/bin/bash

SCRIPT_NAME="net-tools-app_version"
SCRIPT_DESCRIPTION="Get Net-tools application version."
SCRIPT_DESCRIPTION_ES="Obtenga la versión de la aplicación Net-tools."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://sourceforge.net/projects/net-tools/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  net-tools --version
}

# version
if [ "$ARG_BASH_H" != true ]; then
  if command -v net-tools &>/dev/null; then
    if [ "$ARG_BASH_S" == true ]; then
      echo $(CODE 2>&1 | grep -oP 'Net-tools \K\d+\.\d+\.\d+')
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Net-tools"
  fi
fi
