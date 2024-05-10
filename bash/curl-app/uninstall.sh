#!/bin/bash

SCRIPT_NAME="curl-app_uninstall"
SCRIPT_DESCRIPTION="cURL application uninstallation."
SCRIPT_DESCRIPTION_ES="Desinstalación de la aplicación cURL."
SCRIPT_VERSION="24.05.11"
SCRIPT_SEE="https://curl.se/"

# tools
. "$(dirname "$0")/../bash-utilities.sh"

# code
CODE() {
  $IS_ROOT apt autoremove $ARG_YES --purge curl
}

# uninstall
if [ "$ARG_BASH_H" != true ]; then
  if command -v curl &>/dev/null; then
    if [ "$ARG_BASH_M" = true -a "$ARG_YES" = "-y" ]; then
      CODE &>/dev/null
    else
      CODE
    fi
  else
    ERROR_NOT_FOUND "cURL"
  fi
fi
