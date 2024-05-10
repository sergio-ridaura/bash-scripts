#!/bin/bash

SCRIPT_NAME="wget-app_version"
SCRIPT_DESCRIPTION="Get Wget application version."
SCRIPT_DESCRIPTION_ES="Obtenga la versión de la aplicación Wget."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://www.gnu.org/software/wget/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  diodon --version
}

# version
if [ "$ARG_BASH_H" != true ]; then
  if command -v wget &>/dev/null; then
    if [ "$ARG_BASH_S" == true ]; then
      echo $(CODE 2>&1 | grep -oP 'IMproved \K\d+\.\d+')
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Wget"
  fi
fi
