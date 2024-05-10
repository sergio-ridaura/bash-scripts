#!/bin/bash

SCRIPT_NAME="zip-app_uninstall"
SCRIPT_DESCRIPTION="Zip application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Zip."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://en.wikipedia.org/wiki/Zip_(file_format)"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge zip
}

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if command -v zip &>/dev/null; then
    if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
      CODE &>/dev/null
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Zip"
  fi
fi
