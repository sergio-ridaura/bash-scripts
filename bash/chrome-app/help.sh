#!/bin/bash

SCRIPT_NAME="chrome-app_help"
SCRIPT_DESCRIPTION="Google Chrome help command."
SCRIPT_DESCRIPTION_ES="Comando de ayuda de Google Chrome."
SCRIPT_VERSION="24.05.07"
SCRIPT_SEE="https://www.google.com/chrome/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# help
if [ "$ARG_BASH_I" != true ]; then
  if command -v google-chrome &>/dev/null; then
    google-chrome --help
  else
    ERROR_NOT_FOUND "Google Chrome"
  fi
fi
