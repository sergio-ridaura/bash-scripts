#!/bin/bash

SCRIPT_NAME="curl-app_info"
SCRIPT_DESCRIPTION="cURL info command."
SCRIPT_DESCRIPTION_ES="Comando de información de cURL."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://curl.se/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_H" != true ]; then
  if command -v curl &>/dev/null; then
    info curl
  else
    ERROR_NOT_FOUND "cURL"
  fi
fi
