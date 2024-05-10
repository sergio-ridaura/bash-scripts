#!/bin/bash

SCRIPT_NAME="diodon-app_version"
SCRIPT_DESCRIPTION="Get Diodon application version."
SCRIPT_DESCRIPTION_ES="Obtenga la versión de la aplicación Diodon."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://launchpad.net/diodon"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  diodon --version
}

# version
if [ "$ARG_BASH_H" != true ]; then
  if command -v diodon &>/dev/null; then
    if [ "$ARG_BASH_S" == true ]; then
      echo $(CODE 2>&1 | grep -oP 'Diodon \K\d+\.\d+\.\d+')
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Diodon"
  fi
fi
