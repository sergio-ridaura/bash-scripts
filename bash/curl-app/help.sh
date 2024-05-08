#!/bin/bash

SCRIPT_NAME="curl-app_help"
SCRIPT_DESCRIPTION="cURL help command."
SCRIPT_DESCRIPTION_ES="Comando de ayuda de cURL."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://curl.se/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# help
if [ "$ARG_BASH_I" != true ]; then
  if command -v curl &>/dev/null; then
    curl --help
  else
    ERROR_NOT_FOUND "cURL"
  fi
fi
