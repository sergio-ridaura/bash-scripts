#!/bin/bash

SCRIPT_NAME="chrome-app_uninstall"
SCRIPT_DESCRIPTION="Google Chrome application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Google Chrome."
SCRIPT_VERSION="24.05.07"
SCRIPT_SEE="https://www.google.com/chrome/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# uninstall
if [ "$ARG_BASH_I" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    $IS_ROOT apt autoremove $ARG_YES --purge google-chrome &>/dev/null
  else
    $IS_ROOT apt autoremove $ARG_YES --purge google-chrome
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "uninstall Google Chrome"
  fi
fi
