#!/bin/bash

SCRIPT_NAME="diodon-app_uninstall"
SCRIPT_DESCRIPTION="Diodon application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Diodon."
SCRIPT_VERSION="24.05.08"
SCRIPT_SEE="https://launchpad.net/diodon"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# uninstall
if [ "$ARG_BASH_I" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    $IS_ROOT apt autoremove $ARG_YES --purge diodon &>/dev/null
  else
    $IS_ROOT apt autoremove $ARG_YES --purge diodon
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "uninstall Diodon"
  fi
fi
