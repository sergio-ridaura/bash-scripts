#!/bin/bash

SCRIPT_NAME="curl-app_version"
SCRIPT_DESCRIPTION="Get cURL application version."
SCRIPT_DESCRIPTION_ES="Obtenga la versión de la aplicación cURL."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://curl.se/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# version
if [ "$ARG_BASH_H" != true ]; then
  if command -v curl &>/dev/null; then
    if [ "$ARG_BASH_S" == true ]; then
      echo $(curl --version 2>&1 | grep -oP 'curl \K\d+\.\d+\.\d+')
    else
      curl --version
    fi
  else
    ERROR_NOT_FOUND "cURL"
  fi
fi
