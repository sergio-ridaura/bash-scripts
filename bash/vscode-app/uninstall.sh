#!/bin/bash

SCRIPT_NAME="vscode-app_uninstall"
SCRIPT_DESCRIPTION="Visual Studio Code application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Visual Studio Code."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://code.visualstudio.com/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge code
}

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if command -v code &>/dev/null; then
    if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
      CODE &>/dev/null
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Visual Studio Code"
  fi
fi
