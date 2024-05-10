#!/bin/bash

SCRIPT_NAME="chrome-app_uninstall"
SCRIPT_DESCRIPTION="Google Chrome application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Google Chrome."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://www.google.com/chrome/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge google-chrome
}

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if command -v google-chrome &>/dev/null; then
    if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
      CODE &>/dev/null
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Google Chrome"
  fi
fi
