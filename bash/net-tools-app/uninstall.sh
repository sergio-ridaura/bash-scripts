#!/bin/bash

SCRIPT_NAME="net-tools-app_uninstall"
SCRIPT_DESCRIPTION="Net-tools application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Net-tools."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://sourceforge.net/projects/net-tools/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge net-tools
}

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if command -v net-tools &>/dev/null; then
    if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
      CODE &>/dev/null
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Net-tools"
  fi
fi
