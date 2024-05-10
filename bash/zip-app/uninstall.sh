#!/bin/bash

SCRIPT_NAME="zip-app_uninstall"
SCRIPT_DESCRIPTION="Zip application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Zip."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    $IS_ROOT apt autoremove $ARG_YES --purge zip &>/dev/null
  else
    $IS_ROOT apt autoremove $ARG_YES --purge zip
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "uninstall Zip"
  fi
fi
