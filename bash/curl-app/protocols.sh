#!/bin/bash

SCRIPT_NAME="curl-app_protocols_path"
SCRIPT_DESCRIPTION="Get cURL application protocols."
SCRIPT_DESCRIPTION_ES="Obtenga protocolos de aplicación cURL."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://curl.se/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# protocols
if [ "$ARG_BASH_I" != true ]; then
  if command -v curl &>/dev/null; then
    DATA=$(curl --version | grep Protocols)
    if [ "$ARG_BASH_S" == true ]; then
      echo ${DATA#Protocols: }
    else
      echo ${DATA}
    fi
  else
    ERROR_NOT_FOUND "cURL"
  fi
fi
