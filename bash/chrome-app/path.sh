#!/bin/bash

SCRIPT_NAME="chrome-app_path"
SCRIPT_DESCRIPTION="Get Google Chrome application path."
SCRIPT_DESCRIPTION_ES="Obtenga la ruta de la aplicación Google Chrome."
SCRIPT_VERSION="24.05.07"
SCRIPT_SEE="https://www.google.com/chrome/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# path
if [ "$ARG_BASH_I" != true ]; then
  if command -v google-chrome &>/dev/null; then
    which google-chrome
  else
    ERROR_NOT_FOUND "Google Chrome"
  fi
fi
