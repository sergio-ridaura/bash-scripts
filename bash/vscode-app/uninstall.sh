#!/bin/bash

SCRIPT_NAME="vscode-app_uninstall"
SCRIPT_DESCRIPTION="Visual Studio Code application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Visual Studio Code."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://code.visualstudio.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    $IS_ROOT apt autoremove $ARG_YES --purge code &>/dev/null
  else
    $IS_ROOT apt autoremove $ARG_YES --purge code
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "uninstall Visual Studio Code"
  fi
fi
