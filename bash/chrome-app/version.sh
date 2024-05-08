#!/bin/bash

SCRIPT_NAME="chrome-app_version"
SCRIPT_DESCRIPTION="Get Google Chrome application version."
SCRIPT_DESCRIPTION_ES="Obtenga la versión de la aplicación Google Chrome."
SCRIPT_VERSION="24.05.07"
SCRIPT_SEE="https://www.google.com/chrome/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# version
if [ "$ARG_BASH_I" != true ]; then
  if command -v google-chrome &>/dev/null; then
    if [ "${ARG_BASH_S}" == true ]; then
      echo $(google-chrome --version 2>&1 | grep -oP 'Google Chrome \K\d+\.\d+\.\d+.\d+')
    else
      google-chrome --version
    fi
  else
    ERROR_NOT_FOUND "Google Chrome"
  fi
fi
