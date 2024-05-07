#!/bin/bash

SCRIPT_NAME="chrome-app_info"
SCRIPT_DESCRIPTION="Google Chrome info command."
SCRIPT_DESCRIPTION_ES="Comando de información de Google Chrome."
SCRIPT_VERSION="24.05.07"
SCRIPT_SEE="https://www.google.com/chrome/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# info
if [ "$ARG_BASH_I" != true ]; then
  if command -v google-chrome &>/dev/null; then
    info google-chrome
  else
    ERROR_NOT_FOUND Google Chrome
  fi
fi
