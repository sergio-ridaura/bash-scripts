#!/bin/bash

SCRIPT_NAME="chrome-app_version"
SCRIPT_DESCRIPTION="Get Google Chrome application version."
SCRIPT_DESCRIPTION_ES="Obtenga la versión de la aplicación Google Chrome."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://www.google.com/chrome/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  google-chrome --version
}

# version
if [ "$ARG_BASH_H" != true ]; then
  if command -v google-chrome &>/dev/null; then
    if [ "${ARG_BASH_S}" == true ]; then
      echo $(CODE 2>&1 | grep -oP 'Google Chrome \K\d+\.\d+\.\d+.\d+')
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Google Chrome"
  fi
fi
