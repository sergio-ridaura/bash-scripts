#!/bin/bash

SCRIPT_NAME="diodon-app_uninstall"
SCRIPT_DESCRIPTION="Diodon application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Diodon."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://launchpad.net/diodon"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge diodon
}

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if command -v diodon &>/dev/null; then
    if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
      CODE &>/dev/null
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Diodon"
  fi
fi
