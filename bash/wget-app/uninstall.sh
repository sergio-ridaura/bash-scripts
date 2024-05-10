#!/bin/bash

SCRIPT_NAME="wget-app_uninstall"
SCRIPT_DESCRIPTION="Wget application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación Wget."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://www.gnu.org/software/wget/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge wget
}

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if command -v wget &>/dev/null; then
    if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
      CODE &>/dev/null
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "Wget"
  fi
fi
