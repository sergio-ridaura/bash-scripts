#!/bin/bash

SCRIPT_NAME="wget-app_uninstall"
SCRIPT_DESCRIPTION="Wget application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Wget."
SCRIPT_VERSION="24.05.10"
SCRIPT_SEE="https://www.gnu.org/software/wget/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
    $IS_ROOT apt autoremove $ARG_YES --purge wget &>/dev/null
  else
    $IS_ROOT apt autoremove $ARG_YES --purge wget
  fi

  if [ "$ARG_BASH_S" = true ]; then
    echo "uninstall Wget"
  fi
fi
