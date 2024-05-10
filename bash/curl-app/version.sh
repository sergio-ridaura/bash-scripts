#!/bin/bash

SCRIPT_NAME="curl-app_version"
SCRIPT_DESCRIPTION="Get cURL application version."
SCRIPT_DESCRIPTION_ES="Obtenga la versión de la aplicación cURL."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://curl.se/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  curl --version
}

# version
if [ "$ARG_BASH_H" != true ]; then
  if command -v curl &>/dev/null; then
    if [ "$ARG_BASH_S" == true ]; then
      echo $(CODE 2>&1 | grep -oP 'curl \K\d+\.\d+\.\d+')
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "cURL"
  fi
fi
