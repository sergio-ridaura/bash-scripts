#!/bin/bash

SCRIPT_NAME="zip-app_version"
SCRIPT_DESCRIPTION="Get Zip application version."
SCRIPT_DESCRIPTION_ES="Obtenga la versión de la aplicación Zip."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# version
if [ "$ARG_BASH_H" != true ]; then
  if command -v zip &>/dev/null; then
    if [ "$ARG_BASH_S" == true ]; then
      echo $(zip --version 2>&1 | grep -oP 'This is Zip \K\d+\.\d+')
    else
      zip --version
    fi
  else
    ERROR_NOT_FOUND "Zip"
  fi
fi
